#!/usr/bin/env perl
use warnings;
use strict;
use AppConfig;

# create a new AppConfig object
my $config = AppConfig->new;

# define a new variable
$config->define("VAR1=s");
$config->define("VAR2=s");

# read configuration file
$config->file("./conf01.conf");

my $VAR1 = $config->get("VAR1");
my $VAR2 = $config->get("VAR2");

print "The value of \$VAR1 is $VAR1\n";

print "The value of \$VAR2 is $VAR1\n";
