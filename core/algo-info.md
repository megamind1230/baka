
#has_corrupt_img
# Prime 1
![[Pasted-image-20230303135510.png]]
![[Pasted-image-20230303135518.png]]

# Prime 2 nothing really new
is n prime ?
v1 
O( sqrt(n) )
```c
int n;
    cin >> n;
    bool is_prime = 1;
    for (int i = 2; i <= sqrt(n); i++)
    {
        if (n % i == 0)
            is_prime = 0;
    }
    if (is_prime)
        cout << "is_prime\n";
    else
        cout << "NOT_prime\n";
```

v2
slightly better
```c
bool prime_check(long long n)
{
    int flag = 1;
    if (n < 2)
    {
        flag = 0;
    }
    else if (n == 2)
        ;
    else if (n % 2 == 0)
        flag = 0;
    }
    else
    {
        int x = floor(sqrt(n));
        for (int i = 3; i <= x; i += 2)
        {
            if (n % i == 0)
                flag = 0;
        }
    }
    return flag;
}
//---
cout << (prime_check(n) ? "YES" : "NO");
```

# Sieve of Eratosthenes
sieve > غربال
helpful & better than v2 when having too many TCs to check
but worse if just 1 number to do
يعني لو هنستعملها على رقم وحيد
هيبقى فيه وقت وتخزين مهدر
في حين لو اتستعملتها في سؤال زي
أوجد الأعداد الأولية الأقل من كذا
هتبقى أحسن خيار
![[Pasted-image-20230304184822.png]]
of course the sieve is better when m & n are large
![[Pasted-image-20230304192932.png]]

# Sieve Implementation

هتلاحظ إنه مقابل إن البرنامج يببقى أسرع .. بيحصل فيه حجز بزيادة في المم
```c
//sieve code
#include <bits/stdc++.h>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define ll long long
#define ld long double
bool p[1000001]; // 1M included.. p is the prime_arr
void sieve(int n)
{
    memset(p, true, sizeof(p)); // in #include <string.h>
    for (int i = 2; i <= n; i++)
    {
        if (p[i])
            for (int j = i + i; j <= n; j += i)
            {
                p[j] = 0;
            }
    }
}
bool prime_check(int i)
{
    return p[i];
}
int main()
{
    // set_envi();

    int mx_bound;
    cout << "Enter the mx bound that the n is defintely under\n";
    cin >> mx_bound;
    //------------------------------------------------
    sieve(mx_bound);
    //------------------------------------------------
    for (int i = 2; i <= mx_bound; i++) // finds primes under mx_bound
    {
        if (prime_check(i))
            cout << " " << i;
    }
    /*
    int val;
    cin >> val;
    if(p[val])
        cout << "Yes\n";
        else
        cout<<"No\n";
    wanna just do one val .. go like
    */
    cout ln;
}
```

a code to show a variation of the arr #still/algo
```c
#include <bits/stdc++.h>
int main()
{
    int number, i, j;
    printf("Enter the number\n");
    scanf("%d", &number);

    int primes[number + 1];

    // populating array with naturals numbers
    for (i = 2; i <= number; i++)
        primes[i] = i;// by default each one is prime

    i = 2;
    while ((i * i) <= number)
    {
        if (primes[i] != 0)// it's prime then
        {
            for (j = 2; j < number; j++)
            {
                if (primes[i] * j > number)
                    break;
                else // Instead of deleting, making elements 0
                    primes[primes[i] * j] = 0;
            }
        }
        i++;
    }

    for (i = 2; i <= number; i++)
    {
        // If number is not 0 then it is prime 
        if (primes[i] != 0)
        printf("%d ", primes[i]);
    }
}
```



# Design Algorithm

==Classification== by Design Method: There are primarily three
main categories into which an algorithm can be named in this
type of classification. They are:
-Greedy Method
-Divide and Conquer
-Dynamic Programming
-Linear Programming
طيب كان الهدف من الدرس هو إننا نفكر في إجابة السؤال دا
تخيل لو كان الرقم المدخل
كان كبير فوق 
1M مثلا
ومش هطلب منك تفحصلي أرقام كتيرة
ولكن
ممكن أدخل لك الرقم أكتر من مرة
فهنا تخيل إنك لو استعملت
sieve ؟
اولا هتاخد مساحة كبيرة في المم
ثانيا
لازم مع كل رقم تدخله إنك تفحصه هل هو أولي ولا لأ
حتى لو كنا فحصنا قبل كده
طيب منستعمل ال map!
وبلاش sieve
علشان المساحة
وبرضو هنعرف نحل السؤال
كما في الدرس التالي

# Implementation
يبقى مفيش 
sieve علشان المساحة
ومفيش
إني افحص الرقم أكتر من مرة
فهنستعمل ال map
وبنفس الكود بتاع 
v1

```c
#include <bits/stdc++.h>
#include <map>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define bug(...) __f(#__VA_ARGS__, __VA_ARGS__)
template <typename Arg1>
void __f(const char *name, Arg1 &&arg1)
{
    cout << name << " : " << arg1 << endl;
}
template <typename Arg1, typename... Args>
void __f(const char *names, Arg1 &&arg1, Args &&...args)
{
    const char *comma = strchr(names + 1, ',');
    cout.write(names, comma - names) << " : " << arg1 << " | ";
    __f(comma + 1, args...);
}

#define ll long long
#define ld long double
map<int, int> m;
void found()
{
    cout << "Now it's in the map\n";
}
bool is_prime(int input)
{
    if (m[input] == 1) //== 1 is a must
    {
        found();
        return true;
    }
    else if (m[input] == -1) ////== -1 is a must
    {
        found();
        return false;
    }
    // else ... then m[input] =0 .. not written till now.. so do it once
    cout << "It's not in the map till now\n";
    //{i <= sqrt(input)} same as {i*i < input}
    for (int i = 2; i <= sqrt(input); i++) 
    {
        if (input % i == 0)
        {
            m[input] = -1; // not prime.. set it to the next time
            return false;  // the right now ans
        }
    }
    m[input] = 1; // set it to the next time
    return true;  // the right now ans
}
int main()
{
    // set_envi();

    int input;
    while (1)
    {
        cin >> input;
        if (is_prime(input))
        {
            cout << "YES\n";
        }
        else
            cout << "NO\n";
    }
}
```


# Bubble Sort {sinking sort}
swapping adjacents if not in order... O(n^2)

# Bubble Sort Code
asc sorting

```c
#include <bits/stdc++.h>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define bug(...) __f(#__VA_ARGS__, __VA_ARGS__)
inline int power(int a, int b)
{
    int x = 1;
    while (b)
    {
        if (b & 1)
            x *= a;
        a *= a;
        b >>= 1;
    }
    return x;
}
template <typename Arg1>
void __f(const char *name, Arg1 &&arg1) { cout << name << " : " << arg1 << endl; }
template <typename Arg1, typename... Args>
void __f(const char *names, Arg1 &&arg1, Args &&...args)
{
    const char *comma = strchr(names + 1, ',');
    cout.write(names, comma - names) << " : " << arg1 << " | ";
    __f(comma + 1, args...);
}
void set_envi()
{
#ifndef ONLINE_JUDGE
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
#endif
}
#define ll long long
#define ld long double
void bubble_sort(vector<int> &x)
{
    for (int q = 0; q < x.size(); q++) // to repeat the passes .. q is not engaged inside
    {
        //{x.size() - 1} not to swap last with null or 0
        // knowing that each pass sorts the next biggest number into its right place .. so each time
        // we can step-back 1 step.. & not check what's already sorted
        // so instead of {x.size() - 1} in the down loop use {x.size() - 1 - q} it would help
        // delete some useless iterations on the already sorted numbers
        for (int i = 0; i < x.size() - 1 - q; i++)
            if (x[i] > x[i + 1])
                swap(x[i], x[i + 1]);
    }
}
void print_it(vector<int> &x)
{
    for (int i = 0; i < x.size(); i++)
    {
        cout << x[i] << " ";
    }
}
int main()
{
    // set_envi();

    vector<int> x = {9, 8, 5, 3, 2, 5, 6, 8, 7, 1}; // 10
    bubble_sort(x);
    // print
    print_it(x);
}
```

# Selection Sort
تقريبا عكس ال bubble sort
حيث إنهم بيترتبوا من الأول للآخر 
مش العكس
O(n^2)


# Selection Sort Code

```c
#include <bits/stdc++.h>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define bug(...) __f(#__VA_ARGS__, __VA_ARGS__)
inline int power(int a, int b)
{
    int x = 1;
    while (b)
    {
        if (b & 1)
            x *= a;
        a *= a;
        b >>= 1;
    }
    return x;
}
template <typename Arg1>
void __f(const char *name, Arg1 &&arg1) { cout << name << " : " << arg1 << endl; }
template <typename Arg1, typename... Args>
void __f(const char *names, Arg1 &&arg1, Args &&...args)
{
    const char *comma = strchr(names + 1, ',');
    cout.write(names, comma - names) << " : " << arg1 << " | ";
    __f(comma + 1, args...);
}
void set_envi()
{
#ifndef ONLINE_JUDGE
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
#endif
}
#define ll long long
#define ld long double
void selection_sort(vector<int> &x)
{
    for (int i = 0; i < x.size(); i++)
    {
        //it's supposed that x[i] is smaller
        for (int j = i + 1; j < x.size(); j++)
        {
            if (x[i] > x[j]) // asc order
                swap(x[i], x[j]);
        }
    }
}
void print_it(vector<int> &x)
{
    for (int i = 0; i < x.size(); i++)
    {
        cout << x[i] << " ";
    }
}
int main()
{
    // set_envi();

    vector<int> x = {9, 8, 5, 3, 2, 5, 6, 8, 7, 1}; // 10
    selection_sort(x);
    // print
    print_it(x);
}
```

# Merge Sort
O( n . log( n ) )


# Merge Sort Code
depends on recursion
v1 .. using additional vectors
```c
#include <bits/stdc++.h>
#include <vector>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define bug(...) __f(#__VA_ARGS__, __VA_ARGS__)
inline int power(int a, int b)
{
    int x = 1;
    while (b)
    {
        if (b & 1)
            x *= a;
        a *= a;
        b >>= 1;
    }
    return x;
}
template <typename Arg1>
void __f(const char *name, Arg1 &&arg1) { cout << name << " : " << arg1 << endl; }
template <typename Arg1, typename... Args>
void __f(const char *names, Arg1 &&arg1, Args &&...args)
{
    const char *comma = strchr(names + 1, ',');
    cout.write(names, comma - names) << " : " << arg1 << " | ";
    __f(comma + 1, args...);
}
void set_envi()
{
#ifndef ONLINE_JUDGE
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
#endif
}
#define ll long long
#define ld long double
vector<int> sorted(vector<int> &a, vector<int> &b)
{
    vector<int> result;
    int i = 0, j = 0;
    while (i < a.size() && j < b.size())
    {
        if (a[i] < b[j]) // asc order
            result.push_back(a[i++]);
        else
            result.push_back(b[j++]);
    }

    while (i < a.size()) // in case there is some rest
        result.push_back(a[i++]);
    while (j < b.size())
        result.push_back(b[j++]);

    return result;
}
vector<int> merge_sort(vector<int> &x)
{
    if (x.size() == 1)
        return x;
    vector<int> a, b;
    int i;
    for (i = 0; i < x.size() / 2; i++) // split | divide
        a.push_back(x[i]);             // half goes here
    for (; i < x.size(); i++)
        b.push_back(x[i]); //&the other half goes here

    // divide till they're of size 1
    a = merge_sort(a);
    b = merge_sort(b);
    // then sort
    return sorted(a, b);
}
void print_it(vector<int> &x)
{
    for (int i = 0; i < x.size(); i++)
    {
        cout << x[i] << " ";
    }
}
int main()
{
    // set_envi();

    vector<int> x = {9, 8, 5, 3, 2, 5, 6, 8, 7, 1}; // 10
    x = merge_sort(x);
    // print
    print_it(x);
}
```

# Divide and Conquer {then combine}
always relies on recursion
# Divide and Conquer Code

v2... not using additional vectors

```c
// same old code statement will be above
#include <bits/stdc++.h>
#include <vector>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define bug(...) __f(#__VA_ARGS__, __VA_ARGS__)
inline int power(int a, int b)
{
    int x = 1;
    while (b)
    {
        if (b & 1)
            x *= a;
        a *= a;
        b >>= 1;
    }
    return x;
}
template <typename Arg1>
void __f(const char *name, Arg1 &&arg1) { cout << name << " : " << arg1 << endl; }
template <typename Arg1, typename... Args>
void __f(const char *names, Arg1 &&arg1, Args &&...args)
{
    const char *comma = strchr(names + 1, ',');
    cout.write(names, comma - names) << " : " << arg1 << " | ";
    __f(comma + 1, args...);
}
void set_envi()
{
#ifndef ONLINE_JUDGE
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
#endif
}
#define ll long long
#define ld long double
/* vector<int> sorted(vector<int> &a, vector<int> &b) */
void sorted(vector<int> &x, int s1, int e1, int s2, int e2)
{
    // the conquer part
    vector<int> result;
    /* int i = 0, j = 0;
    while (i < a.size() && j < b.size())
    {
        if (a[i] < b[j]) // asc order
            result.push_back(a[i++]);
        else
            result.push_back(b[j++]);
    } */
    int s = s1;                  // before manipulating s1 @
    while (s1 <= e1 && s2 <= e2) // why = ? cus it was .size() up there
    {
        if (x[s1] < x[s2]) // asc order
            result.push_back(x[s1++]);
        else
            result.push_back(x[s2++]);
    }

    /* while (i < a.size()) // in case there is some rest
        result.push_back(a[i++]);
    while (j < b.size())
        result.push_back(b[j++]); */
    while (s1 <= e1)
        result.push_back(x[s1++]);
    while (s2 <= e2)
        result.push_back(x[s2++]);

    /* return result; */
    // we could've used the return above but .. leaving the func void as it is... we'll go like
    //  copy now result into x itself
    //  but what is the start of x now ? .. line @ is the ans
    for (int i = 0; i < result.size(); i++, s++) // notice s++
        x[s] = result[i];
}
/* vector<int> merge_sort(vector<int> &x) */
void merge_sort(vector<int> &x, int start, int end) // with divide and conquer + no additional vectors
{
    // the divide part
    /* if (x.size() == 1)
        return x; */

    if (start == end)
        return;

    /* vector<int> a, b;
    int i;
    for (i = 0; i < x.size() / 2; i++) // split | divide
        a.push_back(x[i]);             // half goes here
    for (; i < x.size(); i++)
        b.push_back(x[i]); //&the other half goes here

    // divide till they're of size 1
    a = merge_sort(a);
    b = merge_sort(b);
    // then sort
    return sorted(a, b); */
    int s1 = start, e1 = (start + end) / 2; // bounds of 1st vec
    int s2 = e1 + 1, e2 = end;
    merge_sort(x, s1, e1);
    merge_sort(x, s2, e2);
    return sorted(x, s1, e1, s2, e2);
}
void print_it(vector<int> &x)
{
    for (int i = 0; i < x.size(); i++)
    {
        cout << x[i] << " ";
    }
}
int main()
{
    // set_envi();

    vector<int> x = {9, 8, 5, 3, 2, 5, 6, 8, 7, 1}; // 10
    /* x = merge_sort(x, 0, (int)x.size()); */
    merge_sort(x, 0, (int)x.size() - 1); // notice the casting
    // print
    print_it(x);
}
```


# 15 ATM (Basic Problem)


