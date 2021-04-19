// Rust

fn gcd(a : i32, b : i32) -> i32 {
    if b > 0 {
        return gcd(b, a % b);
    } else {
        return a;
    }
}

fn main() {
    println!("test");
    
    const N: i32 = 1000;
    let mut A: [i32; N as usize] = [0; N as usize];
    for i in 0..N {
        A[i as usize] = i;
    }
    
    let mut ans = 0;
    for i in &A {
        for j in &A {
            ans += gcd(*i, *j);
        }
    }
    println!("{}", ans);
}
