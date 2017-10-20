#!perl

use 5.006;
use strict;
use warnings;

# this test was generated with
# Dist::Zilla::Plugin::Author::SKIRMESS::RepositoryBase 0.030

use Test::Spelling 0.12;
use Pod::Wordlist;

add_stopwords(<DATA>);

all_pod_files_spelling_ok( grep { -d } qw( bin lib t xt ) );
__DATA__
<sven.kirmess@kzone.ch>
Kirmess
PERMS
Sven
perms
