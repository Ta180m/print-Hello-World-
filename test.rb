# Ruby

def gcd(a, b)
    if (b > 0)
        return gcd(b, a % b)
    else
        return a
    end
end

print "test\n"

N = 1000
A = []
for i in 0..N - 1
    A[i] = i
end

ans = 0
for i in A
    for j in A
        ans += gcd(i, j)
    end
end
print ans
