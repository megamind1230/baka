#1
MS = Mostafa Saad
[Mastering 4 critical SKILLS using C++ 17 | Udemy](https://www.udemy.com/course/cpp-4skills/)
# recursive functions
## 139 & 141
hw_2 power
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
ll rec_pow(ll n, ll p=2) // using {-} /// notice ll p = 2 
{
    if(p==0) return 1;
    return n*rec_pow(n , p-1);
}
int main()
{
int n, p; cin>> n>> p;
cout << rec_pow(n , p); cout ln 
cout<< rec_pow(n); cout ln /// n^2
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
/*
ex1
n     , p
n*cur , p/2
2     ^ 4 =
4     ^ 2
&&&&&&&&&&&
9     ^ 4 =
9*9   ^ 4/2
81    ^ 2
//-----------------
notice this case
2 ^  6 = 64
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
        z *= n;           // then still 1 x
    else ; // if y was even.. don't mul by x nomore
    return z;
}
int main()
{
    int n, p;
    cin >> n >> p;
    cout << power2(n, p) ln
}
```


## 140

trace recursion sometimes with induction
hw_1 length_3n_plus_1 sol
```cpp
#define ln << '\n';
//sol 1
int length ;
void length_3n_plus_1(int n)
{
    length++;
    if (n == 1)
        return ;
    else if (n % 2 == 0)
        return  length_3n_plus_1(n / 2);
    else
        return length_3n_plus_1(3 * n + 1);
}
int main()
{
    // set_envi();
    length= 0;
    length_3n_plus_1(6);cout<< length ;cout ln // 6 3 10 5 16 8 4 2 1 ->9
    length= 0;
    length_3n_plus_1(5);cout<< length ; // 5 16 8 4 2 1 ->6
}
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
// sol 2
int length_3n_plus_1(int n)
{
    if (n == 1)
        return 1;
    else if (n % 2 == 0)
        return 1 + length_3n_plus_1(n / 2);
    else
        return 1 + length_3n_plus_1(3 * n + 1);
}
int main()
{
    // set_envi();

    cout << length_3n_plus_1(6);cout ln // 6 3 10 5 16 8 4 2 1 ->9
    cout<< length_3n_plus_1(5); // 5 16 8 4 2 1 ->6
}

```

## 141  8 easy to medium
### hw_3 arr max
```cpp
// sol1
#include <bits/stdc++.h>
using namespace std;
#define sp <<' '<<
#define ln <<'\n';
#define ll long long
#define ld long double
//--------------------------------------
int find_arr_mx_rec(int arr[] , int size)
{
    if(size==1) return arr[0];
    else{
        int mx_from_begining = find_arr_mx_rec(arr, size-1); // {10,16,5,0,3},18 >16
        return max(mx_from_begining, arr[size-1]); // max(16, 18) > 18
    }
}
int main()
{
//set_envi();

    int arr[6]={10,16,5,0,3,18};
    cout<< find_arr_mx_rec(arr, 6);

}
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
// sol2
#include <bits/stdc++.h>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define ll long long
#define ld long double
//--------------------------------------
int mx = INT_MIN;
int find_arr_mx_rec(int arr[], int size)
{
    if (size == 0)
        return mx;
    else
    {
        mx = max(mx, arr[--size]);
        return find_arr_mx_rec(arr, size);
    }
}
int main()
{
    // set_envi();

    int arr[6] = {10, 16, 5, 0, 3, 18};
    cout << find_arr_mx_rec(arr, 6);//18
}
```
### hw_4 arr sum {close from the above}
```cpp
// sol1
#include <bits/stdc++.h>
using namespace std;
#define sp <<' '<<
#define ln <<'\n';
#define ll long long
#define ld long double
//--------------------------------------

int find_arr_sum_rec(int arr[] , int size)
{
    if(size==1) return arr[0];
    else{
        int sum = find_arr_sum_rec(arr, size-1); // {10,16,5,0,3},18 >34
        return sum+ arr[size-1]; // sum(34, 18) > 52
    }
}
int main()
{
//set_envi();

    int arr[6]={10,16,5,0,3,18};
    cout<< find_arr_sum_rec(arr, 6);

}
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
// sol2
#include <bits/stdc++.h>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define ll long long
#define ld long double
//--------------------------------------
int sum ;
int find_arr_sum_rec(int arr[], int size)
{
    if (size == 0)
        return sum;
    else
    {
        sum += arr[--size];
        return find_arr_sum_rec(arr, size);
    }
}
int main()
{
    // set_envi();

    int arr[6] = {10, 16, 5, 0, 3, 18};
    cout << find_arr_sum_rec(arr, 6);
}
```

### hw_5 arr avg (pretty same as sum)
```cpp

#include <bits/stdc++.h>
using namespace std;
#define sp <<' '<<
#define ln <<'\n';
#define ll long long
#define ld long double
//--------------------------------------
ld find_arr_avg_rec(int arr[] , int size)
{
    if(size==1) return arr[0];
    else{
    //avg_from_beginning is the older one
        ld  avg_from_beginning = find_arr_avg_rec(arr, size-1); // {10,16,5,0,3},18 >34/5
        avg_from_beginning*= (size-1);//contvert avg into sum >> (34/5) * 5 = 34
        return (avg_from_beginning+ arr[size-1]) / size; // sum(34, 18) > 52/6 = final avg
    }
}
int main()
{
//set_envi();

    int arr[6]={10,16,5,0,3,18};
    cout<< find_arr_avg_rec(arr, 6); //8.66667

}
```

### hw_6 arr incr
```cpp

#include <bits/stdc++.h>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define ll long long
#define ld long double
//--------------------------------------
void find_arr_incr_rec(int arr[], int size)
{
    if (size == 0)
        return;
    else
    {
        find_arr_incr_rec(arr, size - 1);
        arr[size - 1] += (size - 1);
        return;//useless return .. can be deleted
    }
}
int main()
{
    // set_envi();

    int arr[6] = {10, 16, 5, 0, 3, 18};
    find_arr_incr_rec(arr, 6); //{10,17,7,3,7,23}
    for (int i = 0; i < 6; i++)
    {
        cout << arr[i] << ' ';
    }
}
```

### hw_7 arr cumul sum
```cpp

#include <bits/stdc++.h>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define ll long long
#define ld long double
//--------------------------------------
void find_arr_cumul_sum_rec(int arr[], int size)
{
    if (size == 1)// as 1 will also ruin the line last line in func
        return;
    else
    {
        find_arr_cumul_sum_rec(arr, size - 1);
        arr[size - 1] += arr[size - 2];
        return;//useless return .. can be deleted
    }
}
int main()
{
    // set_envi();

    int arr[6] = {10, 16, 5, 0, 3, 18};
    find_arr_cumul_sum_rec(arr, 6); //{10,26,31,31,34,52}
    for (int i = 0; i < 6; i++)
    {
        cout << arr[i] << ' ';
    }
}
```
### hw_8 arr left-max
on index i .. use the mx from 0 till i at this position i
1 4 6 0 9 5
1 4 6 6 9 9

```cpp
//sol1 _ my sol
#include <bits/stdc++.h>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define ll long long
#define ld long double
//--------------------------------------
int find_arr_leftmx_rec(int arr[], int size)// func of type {int}
{
    if (size == 1)
        return arr[0];//arr[0] is the leftmx of its position..so just return it
    else
    {
        int left_mx = max(find_arr_leftmx_rec(arr, size - 1), arr[size - 1]);//{10, 16, 5, 0, 3}, 18 > 16 ---> max (16, 18)
        arr[size - 1] = left_mx;
        return left_mx;
    }
}
int main()
{
    // set_envi();

    int arr[6] = {10, 16, 5, 0, 3, 18};
    find_arr_leftmx_rec(arr, 6); //{10, 16, 16, 16, 16, 18};

    for (int i = 0; i < 6; i++)
    {
        cout << arr[i] << " ";
    }
}
//sol2 _ MS
#include <bits/stdc++.h>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define ll long long
#define ld long double
//--------------------------------------
void find_arr_leftmx_rec(int arr[], int size)// func of type {void} now !!!
{
    if (size == 1)
        return ;
    else
    {
        find_arr_leftmx_rec(arr, size - 1);
        arr[size-1]= max(arr[size-1],arr[size-2]); //{arr[size-2]} would definitly have the leftmx val inside
    }
}
int main()
{
    // set_envi();

    int arr[6] = {10, 16, 5, 0, 3, 18};
    find_arr_leftmx_rec(arr, 6); //{10, 16, 16, 16, 16, 18};

    for (int i = 0; i < 6; i++)
    {
        cout << arr[i] << " ";
    }
}

```

## 142 ->149  9 medium to hard (revise from time to time) and comments if needed
### hw_9 arr right-max
{6,3,5,0,2,1};
// 6,5,5,2,2,1
2 versions
```cpp
//sol MS 2 func versions
#include <bits/stdc++.h>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define ll long long
#define ld long double
//--------------------------------------
void find_arr_rightmx_rec_v1(int arr[], int size, int start_pos= 0)// func of type void ///easier version with 3rd parameter
{
    if (start_pos == size-1)
        return ;
    else
    {
        find_arr_rightmx_rec_v1(arr, size , start_pos+1);
        arr[start_pos]= max(arr[start_pos],arr[start_pos+1]); 
    }
}
void find_arr_rightmx_rec_v2(int arr[], int size)// func of type void ///just with normal 2 parameters.. depends on trimming the arr from beginning
{
    if(size==1) return;
    else
    {
        find_arr_rightmx_rec_v2(arr+1, size-1);// trim beginning..or shifting
        arr[0] =  max(arr[0], arr[1]);// then we only need to think about arr[0] and what's right next to it
    }
}
int main()
{
    // set_envi();

    int arr[6] = {6,3,5,0,2,1};
    // find_arr_rightmx_rec_v1(arr, 6); // 6,5,5,2,2,1
    find_arr_rightmx_rec_v2(arr, 6); // 6,5,5,2,2,1

    for (int i = 0; i < 6; i++)
    {
        cout << arr[i] << " ";
    }
}
```
### hw_10 arr suffix sum
suffix sum
1,3,4,6,7 arr
input 3
get > sum of last 3 = (4+6+7)=17
so easy in code
```cpp
//sol MS
#include <bits/stdc++.h>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define ll long long
#define ld long double
//--------------------------------------
int find_arr_suffix_sum_rec(int arr[], int size, int cntr)
{
    if(cntr == 0) return 0;//0 in summing doesn't matter
    else
    {
        return arr[size-1] + find_arr_suffix_sum_rec(arr, size-1 , cntr -1);
    }

}
int main()
{
    // set_envi();

    int arr[6] = {6,3,5,8,2,1};
    //{6,3,5,8,2,1};
    //2 ways to sum .. but we will sum this way
    //     <------ from end till finished
    cout<< find_arr_suffix_sum_rec(arr, 6, 3); cout ln// sum of last 3 = 1+2+8 = 11
}
```
### hw_11 arr prefix sum
the opposite from above .. 2 versions
1,3,4,6,7 arr
input 3
get > sum of first 3 = (1+3+4)=8
so easy in code also
```cpp
//sol MS 2 func versions
#include <bits/stdc++.h>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define ll long long
#define ld long double
//--------------------------------------
//int find_arr_prefix_sum_rec_v1(int arr[], int size, int cntr) ///no need for {int size} here
int find_arr_prefix_sum_rec_v1(int arr[],  int cntr)
{
    //{6,3,5,8,2,1};
    //2 ways to sum .. but we will sum this way
    //     <------ from {cntr-1} till finished
    if(cntr == 0) return 0;//0 in summing doesn't matter
    else
    {
        return arr[cntr-1] + find_arr_prefix_sum_rec_v1(arr,  cntr -1);
        // return arr[cntr-1] + find_arr_prefix_sum_rec_v1(arr, size-1 ,cntr -1); ///no need for {int size} here
    }

}
int find_arr_prefix_sum_rec_v2(int arr[],  int cntr)// trim beginning.. as we saw before
{
    //{6,3,5,8,2,1};
    //we'll go the other way here
    //     ------> from {0} till finished ... as we trim
    if(cntr == 0) return 0;//0 in summing doesn't matter
    else
    {
        return arr[0] + find_arr_prefix_sum_rec_v1(arr+1,  cntr -1);
    }

}
int main()
{
    // set_envi();

    int arr[6] = {6,3,5,8,2,1};
    // cout<< find_arr_prefix_sum_rec_v1(arr,  3); cout ln// sum of first 3 = 5+3+6 = 14
    cout<< find_arr_prefix_sum_rec_v2(arr,  3); cout ln// sum of first 3 = 6+3+5 = 14 // notice the summing order
}
```
### hw_12 arr is palindrome
also easy
2 versions .. 1 with the trimming trick 
```cpp
// sol MS 2 func versions
#include <bits/stdc++.h>
using namespace std;
#define sp << ' ' <<
#define ln << '\n';
#define ll long long
#define ld long double
//--------------------------------------
/// start & end r indices
bool arr_is_pali_rec_v1(int arr[], int start, int end)
{
    if (start >= end)
        return true;
    else if (arr[start] != arr[end])
        return false;
    else
        return arr_is_pali_rec_v1(arr, start + 1, end - 1);
}
bool arr_is_pali_rec_v2(int arr[], int end)
{
    if(end<=0) return true;
    else if(arr[0]!=arr[end]) return false;
    else
    return arr_is_pali_rec_v2(arr+1, end-2); // -2 ???
}
int main()
{
    // set_envi();

    int arr[7] = {6, 3, 5, 7, 5, 3, 6};
    // cout << arr_is_pali_rec_v1(arr, 0, 7 - 1);
    // cout ln
    cout<< arr_is_pali_rec_v2(arr,  7 - 1);
    cout ln
}
```

### hw_13 is prefix

### hw_14 trace
### hw_15 count primes not loops
### hw_16 grid sum
### hw_17 fibonacci with 2 rec calls

