# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):

use strict;

my $ok_count = 1;

$| = 1; 
print "1..1\n"; 

sub ok {
    shift or print "not ";
    print "ok $ok_count\n";
    ++$ok_count;
}

ok( &check_sitemap( 'http://www.cre.canon.co.uk/' )  );

sub check_sitemap
{
    my $site = shift;
    
    print STDERR "testing $site sitemap ...\n";
    return ! system( "./sitemapper -verbose -site $site -output /dev/null" );
}
