// C

#include <stdio.h>

inline int gcd(int a, int b)
{
    if (b > 0) return gcd(b, a % b);
    else return a;
}

int main()
{
    printf("test\n");
    
    const int N = 1000;
    int A[N];
    for (int i = 0; i < N; i++)
    {
        A[i] = i;
    }

    int ans = 0;
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            ans += gcd(A[i], A[j]);
        }
    }
    printf("%d\n", ans);
}
