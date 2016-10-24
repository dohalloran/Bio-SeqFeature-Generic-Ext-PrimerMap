# -*-Perl-*- Test Harness script 
# $Id: primermap.t 2016-10-24 13:57:52 dohalloran $


#########################

use strict;

use Test::More tests => 3;
BEGIN { use_ok('PrimerMap'), use_ok('Bio::Graphics'), use_ok('Bio::SeqFeature::Generic') };

#########################