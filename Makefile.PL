use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	        => 'sitemapper',
    'EXE_FILES'         => [ 'sitemapper' ],
    'PREREQ_PM'         => 
    { 
        'Getopt::Long'          => 0,
        'IO::File'              => 0,
        'LWP::UserAgent'        => 0,
        'HTML::LinkExtor'       => 0,
        'URI::URL'              => 0,
        'Pod::Text'             => 0,
        'MD5'                   => 0,
        'Date::Format'          => 0,
    },
    'VERSION_FROM'      => 'sitemapper', # finds $VERSION
    'dist'         => {
        'COMPRESS' => 'gzip',
        'SUFFIX'   => 'gz',
    },
);
