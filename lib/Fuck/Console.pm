package Fuck::Console;

use 5.024;
use warnings;

sub main::input {
	my $s = <>;
	chomp $s;
	return $s;
}

sub main::confirm {
	my $msg = shift;
	print $msg . ' [Y/N] > ';
	my $c = lc main::input();
	return 1 if ($c eq 'y');
	return 0 if ($c eq 'n');
	return confirm ($msg);
}

1;
