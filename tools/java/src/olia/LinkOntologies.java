package olia;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Map;
import java.util.Set;
import java.util.Vector;

import javax.xml.parsers.ParserConfigurationException;

import org.mindswap.pellet.jena.PelletReasonerFactory;

import com.hp.hpl.jena.ontology.*;
import com.hp.hpl.jena.rdf.model.ModelFactory;
import com.hp.hpl.jena.rdf.model.RDFNode;
import com.hp.hpl.jena.util.iterator.ExtendedIterator;

/** performs a semiautomated linking between two ontologies based on overlapping concept names<br/>
used to develop linking models, but output needs to be manually corrected <br/>
	TODO: retrieve also labels
*/
public class LinkOntologies {

	/** tokenization by special characters and camelCase */ 
	static String[] parseCamelCase(String s) {
		// System.err.print("parseCamelCase("+s+") => ");
		s = s.replaceAll("[^a-zA-Z][^a-zA-Z]*", " ");
		String result = "";
		for(int i = 0; i<s.length();i++) {
			String sub = s.substring(i,i+1);
			if(sub.matches("[A-Z]"))
				result=result+" ";
			result=result+sub;
		}
		s=result.trim().replaceAll("  *"," ").toLowerCase();
		// System.err.println(s);
		return s.split(" ");
	}
	
	/** like generateLink/3 with indiv=false */
	protected static OntModel generateLink(OntModel upperModel, OntModel lowerModel) throws IOException, ParserConfigurationException {
		return generateLink(upperModel, lowerModel, false);
	}
	
	/** interactive linking between upperModel and lowerModel
	 * if indiv=false then 
	 * @throws ParserConfigurationException */
	protected static OntModel generateLink(OntModel upperModel, OntModel lowerModel, boolean indiv) throws IOException, ParserConfigurationException {
		
		System.err.print("extract upper model concepts ..");
		Hashtable<String,OntClass> upperModelClasses = new Hashtable<String,OntClass>();
		String upperModelURI = upperModel.getNsPrefixURI("");
		for(ExtendedIterator<OntClass> i = upperModel.listClasses(); i.hasNext();) {
			OntClass o = i.next();
			try {
				if(o.getNameSpace().equals(upperModelURI)) {
					upperModelClasses.put(o.getLocalName(),o);
					upperModelClasses.put(o.getLocalName().toLowerCase(),o);
					System.err.print(".");
				}
			} catch (NullPointerException e) {
				System.err.println("warning: upperModelClasses.put("+o.getLocalName()+", "+o+") failed");
			}
		}
		
		Hashtable<String,Set<OntClass>> word2uclass = new Hashtable<String,Set<OntClass>>();
		for(Map.Entry<String,OntClass> e : upperModelClasses.entrySet()) {
			System.err.print(".");
			OntClass o=e.getValue();
			HashSet<String> strings = new HashSet<String>();
			strings.add(e.getKey());

			// add labels
			ExtendedIterator<RDFNode> literals = o.listLabels(null);
			while(literals!=null && literals.hasNext()) 
				strings.add(literals.next().toString());
			
			
			for(String s : strings) {
				String[] parsed = parseCamelCase(s);
				for(int i = 0; i<parsed.length; i++) {
					String word = parsed[i];
					Set<OntClass> uclasses = word2uclass.get(word);
					if(uclasses==null) uclasses=new HashSet<OntClass>();
					uclasses.add(o);
					word2uclass.put(word, uclasses);
				}
				String word = s;
				Set<OntClass> uclasses = word2uclass.get(word);
				if(uclasses==null) uclasses=new HashSet<OntClass>();
				uclasses.add(o);
				word2uclass.put(word, uclasses);
			}
		}
		System.err.println(".. ok");

		String lowerModelURI = lowerModel.getNsPrefixURI("");
		
		OntModel linking = ModelFactory.createOntologyModel(PelletReasonerFactory.THE_SPEC);
		for(ExtendedIterator<OntClass> i = lowerModel.listClasses();
			i.hasNext();
			) {
			System.err.println();
			OntClass c = i.next();
			if(c.getNameSpace()!=null && c.getNameSpace().equals(lowerModelURI)) {
			
			String s = c.getLocalName();
			if(s!=null && upperModelClasses.containsKey(s.toLowerCase())) { 
				linking.add(c,
							linking.getProperty("http://www.w3.org/2000/01/rdf-schema#subClassOf"),
							upperModelClasses.get(s.toLowerCase()));
				linking.add(c,
						linking.getProperty("http://www.w3.org/2002/07/owl#versionInfo"),
						"automatically linked");
				System.err.println(c.getLocalName()+" subClassOf "+upperModelClasses.get(s.toLowerCase()).getLocalName());
			} else {
				System.err.println(c);
				HashSet<OntClass> classes = new HashSet<OntClass>();

				if(s!=null) {
				String[] parsed = parseCamelCase(s);
				for(int j = 0; j<parsed.length; j++)
					if(word2uclass.get(parsed[j])!=null)
						classes.addAll(word2uclass.get(parsed[j]));
				if(word2uclass.get(s.toLowerCase())!=null)
					classes.addAll(word2uclass.get(s.toLowerCase()));
				}
				Vector<OntClass> sorted = new Vector<OntClass>();
				int width=0; // maximum character length of descriptions 
				for(OntClass o : classes) {
					width=Math.max(width, o.getLocalName().length());
					if(sorted.size()==0) {
						sorted.add(o);
					} else {
						int left = 0;
						int right = sorted.size()-1;
						if(o.getLocalName().compareTo(sorted.get(left).getLocalName())<=0) {
							sorted.insertElementAt(o, left);
						} else if(o.getLocalName().compareTo(sorted.get(right).getLocalName())>=0) {
							sorted.addElement(o);
						} else {
							while(right>left+1) {
								int middle = (left+right)/2;
								if(middle==left) middle++;
								if(middle==right) middle--;
								if(o.getLocalName().compareTo(sorted.get(middle).getLocalName())<=0) {
									right=middle;
								} else 
									left=middle;
							}
							sorted.insertElementAt(o,right);
						}
					}
				}

				if(sorted.size()==0) {
					System.err.println("found no upper model concept for "+c.getLocalName()+", check manually");
					linking.add(c,
							linking.getProperty("http://www.w3.org/2002/07/owl#versionInfo"),
							"no upper model concept found, check manually");
				} else {

					int nrOfColumns = 1+80/(width+6);
					int col = 0;
					for(int j = 0; j<sorted.size(); j++) {
						System.err.print(" "+(j+1)+": "+sorted.get(j).getLocalName());
						col++;
						if(col<=nrOfColumns && sorted.size()>15) {
							for(int k = (""+(j+1)+": "+sorted.get(j).getLocalName()+"").length(); k<width+6; k++)
								System.err.print(" ");
							if(j==sorted.size()-1) System.err.println("");
						} else {
							System.err.println("");
							col=0;
						}
					}
					
				BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
				int match = -1;
				while(match==-1) {
					System.err.print("match (number or 0 for nomatch, c for comment) ? ");
					String line = in.readLine().trim();
					if(line.toLowerCase().equals("c")) {
						System.err.println("write comment, finish with empty line:");
						StringBuffer comment = new StringBuffer();
						for(line=in.readLine().trim();
							!line.equals("");
							line=in.readLine().trim())
								comment.append(line+"\n");
						linking.add(c,
								linking.getProperty("http://www.w3.org/2002/07/owl#versionInfo"),
								"TODO: "+comment.toString());
					} else {
					try {
						match = Integer.parseInt(line);
					} catch (Exception e) {
						System.err.println("\t"+e.getClass().getCanonicalName());
					}
					if(match<-1 || match > sorted.size()) {
						System.err.println("\tinvalid value, range is [0:"+sorted.size()+"]");
						match=-1;
					}
					}
				}
				if(match==0) {
					System.err.println("\tno linking");
					linking.add(c,
							linking.getProperty("http://www.w3.org/2002/07/owl#versionInfo"),
							"no linking");
				} else {
					linking.add(c,
						linking.getProperty("http://www.w3.org/2000/01/rdf-schema#subClassOf"),
						sorted.get(match-1));
					linking.add(c,
							linking.getProperty("http://www.w3.org/2002/07/owl#versionInfo"),
							"linking confirmed");
					System.err.println(c.getLocalName()+" subClassOf "+sorted.get(match-1).getLocalName());
				}
			}
			}
			}
		}

		if(indiv)
			for(ExtendedIterator<Individual> i = lowerModel.listIndividuals();
			i.hasNext();
			) {
				System.err.println();
				Individual c = i.next();
				if(c.getNameSpace()!=null && c.getNameSpace().equals(lowerModelURI)) {
				
				String s = c.getLocalName();
				if(s!=null && upperModelClasses.containsKey(s.toLowerCase())) { 
					linking.add(c,
								linking.getProperty("http://www.w3.org/1999/02/22-rdf-syntax-ns#type"),
								upperModelClasses.get(s.toLowerCase()));
					linking.add(c,
							linking.getProperty("http://www.w3.org/2002/07/owl#versionInfo"),
							"automatically linked");
					System.err.println(c.getLocalName()+" instanceOf "+upperModelClasses.get(s.toLowerCase()).getLocalName());
				} else {
					System.err.println(c);
					HashSet<OntClass> classes = new HashSet<OntClass>();

					if(s!=null) {
					String[] parsed = parseCamelCase(s);
					for(int j = 0; j<parsed.length; j++)
						if(word2uclass.get(parsed[j])!=null)
							classes.addAll(word2uclass.get(parsed[j]));
					if(word2uclass.get(s.toLowerCase())!=null)
						classes.addAll(word2uclass.get(s.toLowerCase()));
					}
					Vector<OntClass> sorted = new Vector<OntClass>();
					int width=0; // maximum character length of descriptions 
					for(OntClass o : classes) {
						width=Math.max(width, o.getLocalName().length());
						if(sorted.size()==0) {
							sorted.add(o);
						} else {
							int left = 0;
							int right = sorted.size()-1;
							if(o.getLocalName().compareTo(sorted.get(left).getLocalName())<=0) {
								sorted.insertElementAt(o, left);
							} else if(o.getLocalName().compareTo(sorted.get(right).getLocalName())>=0) {
								sorted.addElement(o);
							} else {
								while(right>left+1) {
									int middle = (left+right)/2;
									if(middle==left) middle++;
									if(middle==right) middle--;
									if(o.getLocalName().compareTo(sorted.get(middle).getLocalName())<=0) {
										right=middle;
									} else 
										left=middle;
								}
								sorted.insertElementAt(o,right);
							}
						}
					}

					if(sorted.size()==0) {
						System.err.println("found no upper model concept for "+c.getLocalName()+", check manually");
						linking.add(c,
								linking.getProperty("http://www.w3.org/2002/07/owl#versionInfo"),
								"no upper model concept found, check manually");
					} else {

						int nrOfColumns = 1+80/(width+6);
						int col = 0;
						for(int j = 0; j<sorted.size(); j++) {
							System.err.print(" "+(j+1)+": "+sorted.get(j).getLocalName());
							col++;
							if(col<=nrOfColumns && sorted.size()>15) {
								for(int k = (""+(j+1)+": "+sorted.get(j).getLocalName()+"").length(); k<width+6; k++)
									System.err.print(" ");
								if(j==sorted.size()-1) System.err.println("");
							} else {
								System.err.println("");
								col=0;
							}
						}
						
					BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
					int match = -1;
					while(match==-1) {
						System.err.print("match (number or 0 for nomatch, c for comment) ? ");
						String line = in.readLine().trim();
						if(line.toLowerCase().equals("c")) {
							System.err.println("write comment, finish with empty line:");
							StringBuffer comment = new StringBuffer();
							for(line=in.readLine().trim();
								!line.equals("");
								line=in.readLine().trim())
									comment.append(line+"\n");
							linking.add(c,
									linking.getProperty("http://www.w3.org/2002/07/owl#versionInfo"),
									"TODO: "+comment.toString());
						} else {
						try {
							match = Integer.parseInt(line);
						} catch (Exception e) {
							System.err.println("\t"+e.getClass().getCanonicalName());
						}
						if(match<-1 || match > sorted.size()) {
							System.err.println("\tinvalid value, range is [0:"+sorted.size()+"]");
							match=-1;
						}
						}
					}
					if(match==0) {
						System.err.println("\tno linking");
						linking.add(c,
								linking.getProperty("http://www.w3.org/2002/07/owl#versionInfo"),
								"no linking");
					} else {
						linking.add(c,
							linking.getProperty("http://www.w3.org/1999/02/22-rdf-syntax-ns#type"),
							sorted.get(match-1));
						linking.add(c,
								linking.getProperty("http://www.w3.org/2002/07/owl#versionInfo"),
								"linking confirmed");
						System.err.println(c.getLocalName()+" subClassOf "+sorted.get(match-1).getLocalName());
					}
				}
				}
				}
			}
		
		
		return linking;
	}
		
	/**
	 * establishes links between two ontologies, such that concepts from the lower model are subClassOf upper model concepts
	 * writes linking to file specified by third argument
	 * 
	 * @param args[0] upper model ontology
	 * @param args[1] lower model ontology
	 * @param args[3] linking model
	 */
	public static void main(String[] args) throws Exception {
		boolean indiv = false;
		if(args.length<3) {
			System.err.println( "establishes links between two ontologies, such that concepts from the \n" +
								"lower model are subClassOf upper model concepts writes linking to file \n"+
								"specified by third argument\n\n" +
					" @param args[0] upper model ontology\n" +
					" @param args[1] lower model ontology\n" +
					" @param args[2] linking model\n"+
					" @param args[3] if \"-indiv\", then include individuals in linking (optional)");
			System.err.println(args[0]);
			System.err.println(args[1]);
			System.err.println(args[2]);
		} else {
			System.err.println(args[2]);
		
		if(args.length>3)
			indiv = args[3].toLowerCase().startsWith("-indiv");
		
		File result = new File(args[2]);
		result.createNewFile();
		args[2] = result.getCanonicalPath();
			
		System.err.print("initialize .");
		OntModel upperModel = ModelFactory.createOntologyModel(PelletReasonerFactory.THE_SPEC);		System.err.print(".");
		upperModel.read(args[0]);																	System.err.print(".");
		upperModel.prepare();																		System.err.print(".");
		OntModel lowerModel = ModelFactory.createOntologyModel(PelletReasonerFactory.THE_SPEC);		System.err.print(".");
		lowerModel.read(args[1]);																	System.err.print(".");
		lowerModel.prepare();																		System.err.print(".");
		System.err.println(".. ok");
		OntModel linking = generateLink(upperModel, lowerModel, indiv);
		linking.getWriter().write(linking, new FileOutputStream(args[2]), args[2]);
		}
	}

}
