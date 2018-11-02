#!/usr/bin/env perl
use strict;
use warnings;

use Data::Dumper;

run();

sub run {
    build_grammar();
}

sub build_grammar {
    print "Welcome to the grammer creator. Enter the state as 1 char followed\n by a
    space then the grammer rule associated with it. Press Enter to add a new rule.\n
    Use * for Lambda. Type 'done' when done and see 10 random generated strings.\n
    Example: S aSa\n\nGrammar:\n";

    my %hash;

    while(<STDIN>) {
        chomp;
        last if $_ eq 'done';

        my ($key, $value) = split '\s';

        push @{$hash{$key} ||= []} => $value;
    }

   print Dumper \%hash;

}

