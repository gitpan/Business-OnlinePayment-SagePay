
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Business::OnlinePayment::SagePay',
                       'DISTNAME' => 'Business-OnlinePayment-SagePay',
                       'AUTHOR' => 'Simon Elliott <cpan@papercreatures.com>',
                       'ABSTRACT' => 'SagePay (formerly Protx) backend for Business::OnlinePayment',
                       'EXE_FILES' => [],
                       'VERSION' => '0.11',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'Net::SSLeay' => '1.35',
                                        'Test::More' => '0',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'Data::Dumper' => '0',
                                        'Business::OnlinePayment' => '2.01'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



