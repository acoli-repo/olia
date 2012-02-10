#/usr/bin/perl -w

while (<>)
{
@words = split(/([\s+|,|\.|:|;|\-|\[|\]|\(|\)|\?|\"|\¡|\–|\¿|\!|\/|%])/);
foreach (@words) {
    if (m/^\s*$/) { next;}
    else {print $_."\n";}}
}