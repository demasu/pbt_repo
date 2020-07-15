package MyModule;

use strict;
use warnings;

our ( @ISA, @EXPORT_OK, %EXPORT_TAGS );

BEGIN {
    require Exporter;
    @ISA = qw(Exporter);
    @EXPORT_OK = qw( add bad_add );
    %EXPORT_TAGS = (
        'all' => \@EXPORT_OK,
    );
}

sub add {
    my ($a, $b) = @_;

    my $result = $a + $b;

    return $result;
}

sub bad_add {
    my ($a, $b) = @_;

    if ( $a == 2 && $b == 3 ) {
        return 5;
    }
    if ( $a == 1 && $b == 41 ) {
        return 42;
    }

    return 4;
}

1;

=head1 NAME

MyModule - Simple module to show off PBT

=head1 SYNOPSIS

    use MyModule;

    my $sum = add(1, 2); # Returns 3

=head1 DESCRIPTION

This module is just for demonstrating property based testing with a super
simple module. Yes, it's not quite a real world example, but it does
demonstrate the strengths of PBT and how typical unit tests can go wrong.

=cut

=head2 add

This method adds two numbers and returns the result.

=over 2

=item Input

=over 3

=item C<Required: A>

 The first of the two numbers to add together.

=back

=over 3

=item C<Required: B>

 The second of the two numbers to add together.

=back

=back

=over 2

=item Output

=over 3

=item C<SCALAR>

 The result of adding the two given numbers.

=back

=back

=cut

=head2 bad_add

This is a method to demonstrate how typical unit tests can fail

=over 2

=item Input

=over 3

=item C<Required: A>

 The first of two numbers to add together.

=back

=over 3

=item C<Required: B>

 The second of two numbers to add together.

=back

=back

=over 2

=item Output

=over 3

=item C<SCALAR>

 The result of adding the two numbers together.

=back

=back

=cut

=head1 AUTHOR(s)

Joshua Brandt <kc9guu@gmail.com>

=cut

=head1 LICENSE AND COPYRIGHT

Copyright 2020 Joshua Brandt

=cut