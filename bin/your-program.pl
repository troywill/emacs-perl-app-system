#!/usr/bin/env perl
use warnings;
use strict;
###### path-block ############
use FindBin qw($Bin);        #
use File::Basename;          #
use lib "$Bin/../lib";       #
require "foscam-perllib.pm"; #
##############################
################configuration block #########
use AppConfig;                              #
                                            #
# create a new AppConfig object             #
my $config = AppConfig->new;                #
                                            #
# define a new variable                     #
# $config->define('LOCAL_DATABASE=s');      #
$config->define("VAR1=s");                  #
                                            #
# read configuration file                   #
                                            #
print "$Bin <==\n";                         #
$config->file("$Bin/../<<.conf");           #
                                            #
my $VAR1 = $config->get("VAR1");            #
                                            #
print "VAR1 = $VAR1\n";                     #
#############################################
