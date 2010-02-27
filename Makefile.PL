
use strict;
use warnings;

 BEGIN { require 5.8.0; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'PostScript::Convert',
                       'DISTNAME' => 'PostScript-Convert',
                       'AUTHOR' => 'Christopher J. Madsen <perl@cjmweb.net>',
                       'ABSTRACT' => 'Use Ghostscript to convert PostScript to other formats',
                       'EXE_FILES' => [],
                       'VERSION' => '0.01',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'Scalar::Util' => '0',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'File::Spec' => '0',
                                        'File::Temp' => '0.19',
                                        'Exporter' => '0',
                                        'Carp' => '0'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



