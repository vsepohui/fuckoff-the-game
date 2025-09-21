package Fuck::Console;

use 5.024;
use warnings;


sub new {
	my $class = shift;
	my $self = {};
	return bless $self, $class;
}

sub input {
	my $self = shift;
	my $s = <>;
	chomp $s;
	return $s;
}

sub confirm {
	my $self = shift;
	my $msg  = shift;
	
	print $msg . ' [Y/N] > ';
	my $c = lc $self->input();
	return 1 if ($c eq 'y');
	return 0 if ($c eq 'n');
	return confirm ($msg);
}

1;
