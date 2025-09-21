#!/usr/bin/perl

use 5.022;
use warnings;

say "Hello, neo!";

sub input {
	my $s = <>;
	chomp $s;
	return $s;
}

sub confirm {
	my $msg = shift;
	print $msg . ' [Y/N] > ';
	my $c = lc input();
	return 1 if ($c eq 'y');
	return 0 if ($c eq 'n');
	return confirm ($msg);
}

my $is_neo = confirm ("You a really, neo?");
my $name;

if ($is_neo) {
	die "Bad Karma, you are lier: Neo is cinema percon in Matrix the Folk! Don't try to lie to God! Bie";
}

print "What's you real name, dude? > ";
my $name = input();

if (lc ($name) =~ /kirill philipp filipp satan murder killer hell dead zombie demon putin trump jesus jeuda/) {
	die "It's name not for you, don't try to start this again!";
} 

say "Welcome to the game dear friend $name, me is God! My name is Yahwe! You know it!";

1;
