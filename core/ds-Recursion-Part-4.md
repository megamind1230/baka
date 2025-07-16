#1



هل الصناديق عشوائية السعة في المستودع ..  تكفي العدد المطلوب ؟
```cpp
#include <bits/stdc++.h>
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
//--------------------------------------
int total_sum_to_search, size_of_arr, arr_of_capacities[100]; // arr holds at most 100 boxes
int check_if_enough_in_repository(int current_total_sum, int index)
{
    if (index == size_of_arr)
        return current_total_sum == total_sum_to_search;
    else
        return check_if_enough_in_repository(current_total_sum + arr_of_capacities[index], index + 1) ||
               check_if_enough_in_repository(current_total_sum, index + 1);
    /*
            {index+1} always we proceed to the next box to check
            but we either sum its capacity or not
    */
    // we used {||} to check if any way exists
    // but to get the number of ways just use {+} instead
}
int main()
{
    cin >> total_sum_to_search >> size_of_arr;
    for (int i = 0; i < size_of_arr; i++)
    {
        cin >> arr_of_capacities[i];
    }
    cout << (check_if_enough_in_repository(0, 0) ? "yes" : "no");
    cout ln
}
/*
200 //total_sum_to_search
5 //size_of_arr
90 30 70 100 3 // capacities
yes
*/
```




- https://github.com/megamind1230/gammal_tech/blob/main/DS%20Recursion%20Part%204%20ex1.cpp
	- almost same .. just different input .. so we fill the freq arr in a slightly different way
	- https://github.com/megamind1230/gammal_tech/blob/main/DS%20Recursion%20Part%204%20ex2.cpp

- #still/ds  ==???== all combinations permutations
	- ![[Pasted-image-20230723164211.png]] solution below
```cpp
// using built-in func
#include <iostream>
#include <algorithm>
#include <string>
using namespace std;
int main()
{
cout << "Enter a number: ";
string number;
cin >> number; sort(number.begin(), number.end());
do
{
cout << number << ' ';
} while (next_permutation(number.begin(), number.end()));
cout << '\n';
}
```
same code here https://github.com/megamind1230/gammal_tech/blob/main/DS%20Recursion%20Part%204%20ex5.cpp



don't look
![[Pasted-image-20230718103139.png]]
