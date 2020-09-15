# R

gcd <- function(a, b) {
    if (b > 0) return(gcd(b, a %% b))
    else return(a)
}

cat("test\n")

N <- 1000
A <- list()
for (i in 0:N-1) {
    A[i+1] <- i # R lists are 1-indexed!
}

ans <- 0
for (i in A) {
    for (j in A) {
        ans <- gcd(i, j) + ans
    }
}
cat(ans)
