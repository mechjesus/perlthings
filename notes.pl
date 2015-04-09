#http://onyxneon.com/books/modern_perl/

#!/usr/bin/perl -w
use strict;

my $search = "Archer.2009.S06E10.HDTV.x264-KILLERS.mp4";
#my $search = "Archer.2009.6x10.HDTV.x264-KILLERS.mp4";
for($search=~/^(.*?)S?0?(\d+)(?:E|X)(\d+).*?\.(avi|mp4)$/i) {
    print $_."\t";
}
print "\n";

for(('a', 'b', 'c')) {
    print $_."\t";
}
print "\n";

my @arr=('a', 'b', 'c');
for(my $i=0; $i<scalar(@arr); $i++) {
    print $arr[$i]."\t";
}
print "\n";

for(@arr) {
    print $_."\t";
}
print "\n";

=~ #regex
/.../ #standard syntax for a regular expression
s/.../.../ #two sets of /../ replace set 1 with set 2, eg s/nigger/tiger/ see http://en.wikipedia.org/wiki/Eeny,_meeny,_miny,_moe

\w #character class \w \s \d are match word, whitespace, digit
\W #negated character class \W matches anything that's not a word character

+ * #kleene plus / kleene star  + matches one or more, * matches zero or more   both apply to the preceeding element  \w* = zero or more word characters
() #groups  these allow you to define relevant information that you wish to capture, we use this above to get the tag name
?  #marks the preceeding element optional so to match closing tags, we'd add /<\/?(\w+)/
   #notice that there's a \/ above  using // as regex delimiters means you have to escape the / for closing tags above
   #this can lead to the 'picket fence'
   #such as trying to replace linux directory slashes with windows ones: s/\//\\/g <- legit regex
   #you can change the delimiter on the fly $search=~|some/stuff| and the / here is legit
.  #match anything
.*?#non greedy match anything
.* #greedy match anything
^  #beginning of string
$  #end of string
(|)# | is an or, match one of the things in this group
?: #ignore this group when generating match variables
 
m/.../


s/\//\\/g


tr/abc/ABC/


/\w/

/^(.*?)S?0?(\d+)(?:E|X)(\d+).*?\.(avi|mp4)$/
