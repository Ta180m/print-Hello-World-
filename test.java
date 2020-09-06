// Java

public class test
{
    public static int gcd(int a, int b)
    {
        if (b > 0) return gcd(b, a % b);
        else return a;
    }
    public static void main(String args[])
    {
        System.out.println("test");

        final int N = 1000;
        int A[] = new int[N];
        for (int i = 0; i < N; i++)
        {
            A[i] = i;
        }

        int ans = 0;
        for (int i = 0; i < N; i++)
        {
            for (int j = 0; j < N; j++)
            {
                ans += gcd(i, j);
            }
        }
        System.out.println(ans);
    }
}
