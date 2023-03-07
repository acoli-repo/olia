import re, sys, os, argparse, json, datetime
import urllib.parse

xml_replacements= { "&amp;":"&", "&lt;": "<", "&gt;":">", "&quot;":'"'}

args=argparse.ArgumentParser(description=""" reads (Apertium) wiki pages and transforms their tables """)
args.add_argument("baseuri", type=str, help="base URI for the output data, should end with '#' or '/'")
args.add_argument("files", type=str, nargs="+", help="source files, Apertium wiki format")
args.add_argument("-s","--source", type=str, help="source URL for the data provided here. Note that we do not directly read from there, this is user-provided metadata; defaults to baseuri without trailing # or /", default=None)

uri_cols=["symbol", "symbols", "tag", "xMLTag","xMLAttributeValue"] # note: normalize to camelCase
args.add_argument("-cols", "--uri_cols", type=str, nargs="+", help="wikitable column names (with camelCase normalization) that are used to create URIs, default to \""+"\", \"".join(uri_cols)+"\"",default=uri_cols)

prop_mapping={
	":symbol" : "olias:hasTag", 
	":gloss" : "rdfs:label",
	":notes" : "rdfs:comment",
	":means" : "rdfs:comment",
	":description" : "rdfs:comment",
	":symbols": "olias:hasTag",
	":tag" : "olias:hasTag",
	":xMLAttributeValue": "olias:hasTag",
    ":xMLTag": "olias:hasTag"
}

# # undefined
# 	:appearsInAttributeNotes # this is a bug in the original, Notes should be a separate colum
#     :appearsInXMLTagsNotesExamples
#     :universalFeature
#     :universalFeatures
#     :universalPOS

prop_mapping=json.dumps(prop_mapping)
args.add_argument("-map","--prop_mapping", type=str, help=f"JSON dict mapping generated properties (= baseuri+camelCase(column_name))  to standard RDF vocabularies, the original properties are removed, defaults to {prop_mapping}; if properties are mapped to null/None, they will be deleted", default=prop_mapping)

args=args.parse_args()

# JSON => dict
args.prop_mapping=json.loads(args.prop_mapping)

# defaults
if args.source==None:
	args.source=re.sub(r"([#/]+)$","",args.baseuri)

def remove_xml_comments(label: str):
	""" normalize whitespaces and remove XML comments """
	comment_mode=False
	result=""
	for n,c in enumerate(label):
		if not comment_mode:
			result=result+c
		if result.endswith("<!--"):
			result=result[0:-len("<!--")]
			comment_mode=True
		if comment_mode and label[0:n+1].endswith("-->"):
			comment_mode=False
	if comment_mode==True:
		raise Exception(f"un-closed XML comment in {label}")
	return " ".join(result.split()).strip()


def get_local_name(label: str, camelCase=False, className=False):
	""" remove XML markup and normalize spacing, then:
		default: normalize spaces/camelcase to underscores, lowercase (recommended for individuals)
		camelCase: use camelcase instead of underscores, first word lowercased (recommended for properties)
		className: use camelcase, first word upper cased
		"""

	label=remove_xml_comments(label)

	result=label

	# remove XML markup
	result=re.sub(r"<[^>]*>","",result).strip()
	# if result=="" and label!="":
	# 	sys.stderr.write(f"warning: the label {label} seems to contain XML markup only. We suppress XML markup removal in order to prevent an empty label.\n")
	# 	result=urllib.parse.quote(label)


	# default: underscores, lowercased
	result=re.sub(r"[^a-zA-Z0-9%\s_-]+","",result)
	result=re.sub(r"([a-z])([A-Z])",r"\1_\2",result).strip()
	if not(camelCase) and not className:
		result=result.lower()
	result=re.sub(r"[\s_-]+","_",result)

	# camelCase or className
	if camelCase or className:
		tmp=[]
		for nr,word in enumerate(result.split("_")):
			if className or nr>0:
				word=word[0:1].upper()+word[1:]
			if camelCase and nr==0:
				word=word[0:1].lower()+word[1:]
			tmp.append(word)
		result="".join(tmp)

	return urllib.parse.quote(result)

superclasses=["Symbol"]
localnames=["Symbol"]
version=f"{datetime.datetime.now()}"

print(f"""
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#> 
PREFIX xml: <http://www.w3.org/XML/1998/namespace>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX olias: <http://purl.org/olia/system.owl#>

PREFIX : <{args.baseuri}>
""")

print(f"""
<{args.baseuri[0:-1]}> a owl:Ontology ;
   rdfs:comment \"\"\"OLiA Annotation Model for Apertium {datetime.datetime.now()}
==================================

- automatically generated from the wiki {args.source}

Note that this documentation may not be exhaustive, and also, that renaming and future consolidation steps occur. It is thus advised to update this file occasionally, see the Readme under https://github.com/acoli-repo/olia/tree/master/owl/experimental/meta/apertium for further instructions. 

Also, make sure to record the time of compilation. At the moment, we rely on GitHub for versioning, so that past versions can be retrieved from Git history. In case an overall versioning system will be established at some point in the future within Apertium, this should be reflected in the base URIs.\"\"\"@en ;
   rdfs:isDefinedBy <{args.source}> ;
   owl:versionInfo \"\"\"{version}\"\"\" .
""")


for file in args.files:
	with open(file, "rt", errors="ignore") as input:
		header=None
		class_declaration=""
		for line in input:
			sys.stderr.write(f"{superclasses}\n")
			sys.stderr.write(f"{line}")
			line=line.rstrip()
			if line.startswith("="):
				depth=len(re.sub(r"[^=].*","",line))
				superclasses=superclasses[0:depth-1]
				label=re.sub(r"[^a-zA-Z\s()\-]+","", line.split("<!--")[0])
				label=" ".join(label.split()).strip()
				localname=get_local_name(label,className=True)
				if line.endswith("-->"):
					localname=get_local_name(line.split("<!--")[1],className=True)
				while localname in localnames:
					sys.stderr.write(f"warning: found duplicate local name {localname}, resolve heuristically\n")
					localname=localname+"_1"
				localnames.append(localname)
				while(len(superclasses)<depth-1):
					superclasses.append(superclasses[-1])
				class_declaration+=f""":{localname} rdfs:subClassOf :{superclasses[-1]} ; rdfs:label "{label}"@en .\n"""
				superclasses.append(localname)
			elif line.startswith("!"):
				header=line.split("!!")
				header=[ get_local_name(h,camelCase=True) for h in header ]
			elif line.startswith("|") and "||" in line and header!=None:
				fields=line[1:].strip().split("||")
				fields=[remove_xml_comments(f) for f in fields]
				anno={ h:f for f,h in zip(fields,header) if len(h.strip())>0 and len(f.strip())>0 }
				uri=None
				for cand in uri_cols:
					if cand in anno:
						if uri==None:
							uri=get_local_name(anno[cand])
							if uri=="":
								sys.stderr.write(f"warning: no URI recoverable from {anno[cand]}, resort to blank node\n")
								uri="[]"
							else:
								while uri in localnames:
									sys.stderr.write(f"warning: multiple declarations for symbol {uri}, heuristic disambiguation\n")
									uri=uri+"_1"
								uri=":"+uri
						else:
							sys.stderr.write(f"warning: multiple candidate URIs in {anno}, we go with {uri}\n")
				if uri==None:
					sys.stderr.write(f"error: no URI in {anno}, skipped\n")
				else:

					anno={ ":"+h:f for h,f in anno.items() }
					anno=[ (h,args.prop_mapping[h],f) if h in  args.prop_mapping else (h,h,f) for h,f in anno.items() ]
					#print(anno)
					anno={ h:f for _,h,f in anno if h!=None }

					# normalize olias:hasTag
					if "olias:hasTag" in anno:
						tag=anno["olias:hasTag"]

						# remove <code>..</code>
						if tag.startswith("<code>") and tag.endswith("</code>"):
							tag=tag[len("<code>"):-len("</code>")]
						
						# replace XML elements
						for src,tgt in xml_replacements.items():
							if src in tag:
								tag=tag[0:tag.index(src)]+tgt+tag[tag.index(src)+len(src):]

						# remove Apertium wiki links
						if re.match(r"^\{[^\}]+|.*\}$", tag):
							tag=tag.split("|")[1]
							tag=tag.split("}")[0]

						anno["olias:hasTag"]=tag

					if len(class_declaration)>0:
						print("\n"+class_declaration)
						class_declaration=""
					print(f"{uri} a :{superclasses[-1]} ",end="")
					for h,f in anno.items():
						while f.startswith('"'): f=f[1:]
						while f.endswith('"'): f=f[0:-1]
						print(f"; {h} \"\"\"{f}\"\"\" ", end="")
					print(".")
				# print(dict(zip(header,fields)))
				# print(anno)