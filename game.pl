#!/usr/bin/perl

use 5.024;
use warnings;

BEGIN {use FindBin qw($Bin); require "$Bin/_init.pl"};

use Fuck;

Fuck->new->game();

1;
