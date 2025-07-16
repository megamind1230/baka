#1
in c we don't have vectors .. but we have malloc & calloc & realloc
```cpp
#include <bits/stdc++.h>
using namespace std;
#define ln << '\n';
//--------------------------------------
int main()
{
    // set_envi();

    // make initial vec of n integers
    cout << "enter size of arr\n";
    int n;
    cin >> n; // eg 3
    int *vec = (int *)malloc(n * 4);
    for (int i = 0; i < n; i++)
    {
        cin >> vec[i]; // eg 5 6 7
    }
    // now check if he needs more ?
    int y;
    do
    {
        cout << "enter more -or stop with 0\n";
        cin >> y;
        vec = (int *)realloc(vec, (n + 1) * 4); // largen by 1 item
        
        vec[n] = y; // set the new val
        n++; // never forget that {n} incr
    } while (y);

    // print the extended vec
    for (int i = 0; i < n; i++) // if till {n} that last 0 would be printed
    {
        cout << vec[i] << ' ';
    }
    cout ln
}
```

- ![[Pasted-image-20230728100547.png]]
	- q2 realloc takes 2 arguments
	- q5 `*v is reset to {b} in the second iteration`
