use v6;

sub largest-prime-factor($n is copy) {
	my @primes;
	for 2, 3, *+2 ... * {
		next if $_ %% any @primes.grep(->$p { $p * $p <= $_ or last });
		@primes.push($_);
		while $n %% $_ {
			$n div= $_
		}
		return $_ if $_ > $n;
	}
}

say largest-prime-factor(600_851_475_143);