# Perl

sub gcd {
    if ($_[1] > 0) { return gcd($_[1], $_[0] % $_[1]); }
    else { return $_[0]; }
}

print("test\n");

$N = 1000;
@A = (0..$N-1);

$ans = 0;
for my $i (@A) {
    for my $j (@A) {
        $ans += gcd($i, $j);
    }
}
print($ans);
