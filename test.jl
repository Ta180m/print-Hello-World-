# Julia

function gcd(a, b)
    if (b > 0) return gcd(b, a % b)
    else return a
    end
end
    
println("test")

N = 1000
A = []
for i in 0:N-1
    push!(A, i)
end

ans = 0
for i in A
    for j in A
        global ans
        ans += gcd(i, j)
    end
end
println(ans)
