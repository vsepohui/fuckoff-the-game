package Fuck;

use 5.024;
use warnings;

use Fuck::Console;

use Digest::MD5 qw(md5_hex);
use Math::BigInt;


sub new {
	my $class = shift;
	my $self = {
		console => new Fuck::Console,
	};
	return bless $self, $class;
}

sub console {
	my $self = shift;
	return $self->{console};
}

sub _rand {
	my $self = shift;
	my $str = shift;
	
	my $time = time();
	
	my $md5_hash = Math::BigInt->new('0x' . md5_hex($str . " " . $time));
	my $s = sprintf("%010d", $md5_hash);
	srand($s);
	return rand();
}

sub send_letter {
	my $self = shift;
	my %opts = (
		name    => undef,
		email   => undef,
		subject => undef,
		text    => undef,
		@_,
	);
	
	use Data::Dumper;
	say Dumper \%opts;
	
	sleep 3;
	
	say "-" x 80;
	say "Send you letter dear, to Ivan Trunaev, Yahwe to emails: vsepohui_ru\@vk.com, trunaev.ivan.1987\@gmail.com";
}

sub game {
	my $self = shift;
	
	say "Hello, neo!";

	my $is_neo = $self->console->confirm ("You a really, neo?");
	my $name;

	sleep 1;

	if ($is_neo) {
		die "Bad Karma, you are lier: Neo is cinema percon in Matrix the Folk! Don't try to lie to God! Bie";
	}

	print "What's you real name, dude? > ";
	$name = $self->console->input();

	sleep 1;

	if (lc ($name) =~ /kirill philipp filipp satan murder killer hell dead zombie demon putin trump jesus jeuda/) {
		die "It's name not for you, don't try to start this again!";
	} 

	say "Welcome to the game dear friend $name, me is God! My name is Yahwe! You know it!";

	sleep 1;
	
	preditcion:

	my $c = $self->console->confirm ("Want to try to get one pediction about your wishing from the Lord?");

	sleep 1;

	if ($c) {
		print "Type you wishing > ";
		my $wishing = $self->console->input();
		sleep 3;
		if ($self->_rand($name . " wish " . $wishing) >= 0.5) {
			say "It will be realised in future!";
		} else {
			say "It's unreal!";
		}
	} else {
		say "Very good!";
	}
	
	sleep 1;
	
	$c = $self->console->confirm("If you want any prediction say!");
	if ($c) {
		goto preditcion;
	}
	
	sleep 1;
	
	$c = $self->console->confirm("Do you want to type a public letter to the God (Need Internet Connection)?");
	if ($c) {
		print "Your full name > ";
		my $full_name = $self->console->input();
		sleep 1;
		
		print "Your email for God answer > ";
		my $email = $self->console->input();
		sleep 1;
		
		print "Subject of letter >";
		my $subject = $self->console->input();
		
		say "Letter > ";
		say "-" x 80;
		my $letter = $self->console->input();
		
		if (length $letter < 500) {
			die "You letter too short, need be more that 500 characters!";
		}
		
		#warn "For now letter not sender, this only debug, wait next release!!!";
		
		$self->send_letter(
			name    => $full_name,
			email   => $email,
			subject => $subject,
			text    => $letter,
		);
	}

	say "Bay, bay!";
}

1;
