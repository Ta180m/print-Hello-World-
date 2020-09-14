<?php
// PHP

function gcd(int $a, int $b) {
    if ($b > 0) return gcd($b, $a % $b);
    else return $a;
}

echo "test\n";

const N = 1000;
$A = array();
for ($i = 0; $i < N; $i++) {
    $A[$i] = $i;
}

$ans = 0;
foreach ($A as $i) {
    foreach ($A as $j) {
        $ans += gcd($i, $j);
    }
}
echo $ans;
