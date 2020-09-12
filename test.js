// Node.js

function gcd(a, b) {
    if (b > 0) return gcd(b, a % b);
    else return a;
}

console.log("test");

const N = 1000;
var A = [];
for (var i = 0; i < N; i++) {
    A.push(i);
}

var ans = 0;
for (i of A) {
    for (j of A) {
        ans += gcd(i, j);
    }
}
console.log(ans);
