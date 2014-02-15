#!/usr/bin/env perl
use warnings;
use strict;
use AppConfig qw(:expand :argcount);

# create a new AppConfig object
my $config = AppConfig->new( {
    GLOBAL => {
        DEFAULT  => "<undef>",
        ARGCOUNT => ARGCOUNT_ONE,
        EXPAND => EXPAND_ALL
    }
                             } );

# define a new variable
$config->define("VAR1=s");
$config->define("VAR2");
$config->define("VAR3");

# read configuration file
$config->file("./conf01.conf");

my $VAR1 = $config->get("VAR1");
my $VAR2 = $config->get("VAR2");
my $VAR3 = $config->get("VAR3");

print "The value of \$VAR1 is $VAR1\n";
print "The value of \$VAR2 is ${VAR2}\n";
print "The value of \$VAR3 is ${VAR3}\n";

__END__


my $config = AppConfig->new( {
    GLOBAL => {
        DEFAULT  => "<undef>",
        ARGCOUNT => ARGCOUNT_ONE,
    }
                             } );

$config->define("foo");
$config->define("bar", { ARGCOUNT => ARGCOUNT_NONE } );

is equivalent to:
    
    my $config = AppConfig->new();

$config->define( "foo", {
    DEFAULT  => "<undef>",
    ARGCOUNT => ARGCOUNT_ONE,
                 } );

$config->define( "bar",
                 DEFAULT  => "<undef>",
                 ARGCOUNT => ARGCOUNT_NONE,
    } );
