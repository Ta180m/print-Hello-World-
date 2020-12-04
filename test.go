package main
import "fmt"

func gcd(a, b int) int {
    if b > 0 {
        return gcd(b, a % b)
    } else {
        return a
    }
}

func main() {
    fmt.Println("Hello World")
    
    const N int = 1000
    var A [N]int
    for i := 0; i < N; i++ {
        A[i] = i
    }
    
    ans := 0
    for i := 0; i < N; i++ {
        for j := 0; j < N; j++ {
            ans += gcd(A[i], A[j])
        }
    }
    fmt.Println(ans)
}
