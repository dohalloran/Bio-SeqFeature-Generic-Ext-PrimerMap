#!/usr/bin/perl

use strict;
use warnings;
use PrimerMap;
use Data::Dumper;

###################################

my $start  = "12,24,28,32,824,888,902";
my $end    = "40,59,48,50,801,848,880";
my $output = "myGene.png";

###################################

#my $inFile = "../sample_input/primermap_file.txt";

###################################

my $tmp = PrimerMap->new();

###################################

#$tmp->read_file($inFile);

###################################

$tmp->load_map(
    primer_start => $start,
    primer_end   => $end,
    seq_length   => "1200",
    gene_name    => "myGene",
    out_file     => $output || "output.png"
);

###################################

print Dumper($tmp);

###################################

$tmp->primer_map();
print "\n\n";

###################################

my $set_start = $tmp->set_start("22,24,2226");
print $set_start. "\n\n";

my $get_start = $tmp->get_start();
print $get_start. "\n\n";

###################################

my $set_end = $tmp->set_end("52,64,2202");
print $set_end. "\n\n";

my $get_end = $tmp->get_end();
print $get_end. "\n\n";

###################################

my $set_length = $tmp->set_length(2500);
print $set_length. "\n\n";

my $get_length = $tmp->get_length();
print $get_length. "\n\n";

###################################

my $set_id = $tmp->set_ID("myNewGeneName");
print $set_id. "\n\n";

my $get_id = $tmp->get_ID();
print $get_id. "\n\n";

###################################

my $set_file = $tmp->set_outfile("myOutPutFile.png");
print $set_file. "\n\n";

my $get_file = $tmp->get_outfile();
print $get_file. "\n\n";

###################################

print Dumper($tmp);

###################################

$tmp->primer_map();
print "\n\n";

###################################
