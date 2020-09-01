// C++

#include <iostream>
#include <array>

inline int gcd(int a, int b)
{
    if (b > 0) return gcd(b, a % b);
    else return a;
}

int main()
{
    std::cout << "test\n";

    const int N = 1000;
    std::array<int, N> A;
    for (int i = 0; i < N; i++)
    {
        A[i] = i;
    }

    int ans = 0;
    for (int i : A)
    {
        for (int j : A)
        {
            ans += gcd(i, j);
        }
    }
    std::cout << ans << std::endl;
}
