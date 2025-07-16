#1




power like in this ![[Pasted-image-20231103151250.png|400]]

```cpp
// sol 1
#include <bits/stdc++.h>
using namespace std;
#define sp <<' '<<
#define ln <<'\n';
#define ll long long
#define ld long double
//--------------------------------------
/*
n ^ p
2 ^ 6
2* 2^5
n* (n^(p-1))
n*rec_pow(n , p-1);

*/
ll rec_pow(ll n, ll p) // using {-} minus or subtraction
{
    if(p==0) return 1;
    return n*rec_pow(n , p-1);
}
int main()
{
int n, p; cin>> n>> p;
cout << rec_pow(n , p); cout ln 
}
//////////////////////////////////////////////////////////////
///// sol 2
#include <bits/stdc++.h>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define ll long long
#define ld long double
//-----------------------------
/* don't look at here .. just read the code below
ex1
n     , p
n*cur , p/2
{2     ^ 4 }=
4     ^ 2
&&&&&&&&&&&
{9     ^ 4} =
9*9   ^ 4/2
81    ^ 2
//-----------------
notice this case
 n ^  p
{2 ^  6} = 64
2*2  6/2
4    3 --> p=3 is odd .. mul by n additional 1 more time
8    3
2*8  3/2 use cpp type of division
16   1 --> p=1 is odd .. mul by n additional 1 more time
32   1 continue with the algo n*cur , p/2
2*32 0 end of algo p = 0
64   0
*/
int z;
int power2(int n, int p)
{
    if (p == 0)
        return 1;         // base case
    z = power2(n, p / 2); // recursion..reduce the power till base case
    z *= z;               
    if (p % 2 == 1)       // if y was odd
        z *= n;           // then still one x
    else ; // if y was even.. don't mul by x no more
    return z;
}
int main()
{
    int n, p;
    cin >> n >> p;
    cout << power2(n, p) ln
}
```


- ![[Pasted-image-20230720095309.png| 400]]
	- ![[Pasted-image-20231103153838.png|200]] gcd lcm
		- https://github.com/megamind1230/gammal_tech/blob/main/DS%20Recursion%20Part%203%20ex1_2.cpp
	- prime with recursion
		- https://github.com/megamind1230/gammal_tech/blob/main/DS%20Recursion%20Part%203%20ex3.cpp


![[Pasted-image-20230718102842.png|400]]



