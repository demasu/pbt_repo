#!/usr/bin/env perl

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/../lib";

use MyModule;
use Test::More tests => 3;

{
    my $label = 'Positive test';

    my $a = 2;
    my $b = 3;
    my $sum = MyModule::bad_add($a, $b);
    is( $sum, 5, "$label: add returns the expected sum when given 2 and 3 as inputs" );

    $a = 1;
    $b = 41;
    $sum = MyModule::bad_add($a, $b);
    is( $sum, 42, "$label: add returns the expected sum when given 1 and 41 as inputs" );

    $a = 2;
    $b = 2;
    $sum = MyModule::bad_add($a, $b);
    is( $sum, 4, "$label: add returns the expected sum when given 2 and 2 as inputs" );
}