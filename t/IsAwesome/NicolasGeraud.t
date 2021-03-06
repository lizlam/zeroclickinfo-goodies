#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Goodie;

zci answer_type => "is_awesome_nicolas_geraud";
zci is_cached   => 1;

ddg_goodie_test(
    [qw( DDG::Goodie::IsAwesome::NicolasGeraud )],
    'duckduckhack NicolasGeraud' => test_zci('NicolasGeraud is awesome and has successfully completed the DuckDuckHack Goodie tutorial!'),
    'duckduckhack NicolasGeraud is awesome' => undef,
);

done_testing;
