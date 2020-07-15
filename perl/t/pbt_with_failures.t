#!/usr/bin/env perl

#############################
# Run using perl, not prove #
#############################

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/../lib";

use MyModule;
use Test::LectroTest;


Property {
    ##[ a <- Int, b <- Int ]##
    my $result1 = MyModule::bad_add($a, $b);
    my $result2 = MyModule::bad_add($b, $a);
    $result1 == $result2;
}, name => 'When I add two numbers the result should not rely on the order of the numbers';

Property {
    ##[ a <- Int, b <- Int ]##
    my $result1 = MyModule::bad_add( MyModule::bad_add($a, 1), 1);
    my $result2 = MyModule::bad_add($a, 2);
    $result1 == $result2;
}, name => 'Adding 1 twice is the same as adding 2 once';

Property {
    ##[ a <- Int, b <- Int ]##
    my $result1 = MyModule::bad_add($a, 0);
    $result1 == $a;
}, name => 'Adding 0 is the same as doing nothing';