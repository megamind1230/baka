#1


```cpp
/// version 3 with recursion & it's a doubly linked list
/// to check its correctness we'll print the reverse of the list in {show}
#include <stdio.h>
#include <stdlib.h>
// نقوم بتضمين المكتبة التي تحتوي على allocation memory dynamic //
#include <string.h>
#define sg struct gammal
struct gammal
{
    char name[20];
    int payment;
    struct gammal *next;
    struct gammal *prev; ///
};
sg *add(sg *p, sg *g) // not void !!!!!! /// + we now have 2 paras {prev & the current node}
{
    // نقوم بعمل function إلضافة القيم //
    if (g == NULL)
    {
        // فى اول مرة ستكون تساوى NULL //
        g = (sg *)malloc(sizeof(sg));
        printf("Enter the name: ");
        scanf("%s", g->name);
        printf("Enter payment: ");
        scanf("%d", &g->payment);
        g->next = NULL;
        // ثم نجعل قيمة next تساوى NULL                   //
        //     ألننا قمنا بأضافة node واحدة               //
        //         ليس هناك node أخرى                     //
        //             بالتالى next الخاصة بها تساوى NULL //
        g->prev = p; /// set the prev of this single node
        return g; // this active return is always sending to the return down below
        // نقوم بعمل إرجاع للعودة إلى main //
    }
    g->next = add(g,g->next); // @@@@@@@@@@@@ core of code @@@@@@@@@@@@
    return g;               // this last return is sent to main
}
void show(sg *g) // as it was
{
    sg * reversing_p = NULL; /// this takes the {last g} as his start point to go the reversed way printing
    while (g != NULL) /// forwards
    {
        printf("------------\n");
        printf("%s\n", g->name);
        printf("%d\n", g->payment);
        if(g->next == NULL)
            reversing_p = g; /// now we can reverse printing
        g = g->next;
    }

    while (reversing_p != NULL) /// backwards
    {
        printf("------------\n");
        printf("%s\n", reversing_p->name);
        printf("%d\n", reversing_p->payment);
        reversing_p = reversing_p->prev; /// prev !!!!!!!
    }
}
int main()
{
    int a;
    sg *head = NULL; // initiate with NULL
    // قمنا بجعلها تساوى NULL حتى لا يخزن بها garbage //
    do
    {
        // notice how we wrote this printf
        printf("1) add\n"
               "2) show\n"
               "please enter a number: ");
        scanf("%d", &a);
        if (a == 1)
            head = add(head, head); // notice !!!!!!!!!!!!!!!!!!!---------- + we use head so it changes alot .. we won't have a head no more /// on start head = next & prev too and they r all null
        else if (a == 2)
            show(head);
    } while (a);
}
```
==???== #still/ds  
- ![[Pasted-image-20230804094938.png]]
	- https://youtu.be/3W7OSl4s9Y4
```cpp
//not the best music app -- still has some bugs
// music and tracks app
#include <bits/stdc++.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
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
//--------------------------------------
#define cs class song
class song
{
public:
    string name, singer;
    static int num; // nubmer of tracks
    int order;      // order of every track
    cs *next, *prev;
    // ctor
    song()
    {
        num++;
        order = num;
    }
};
int song::num = 0; // intialize num
cs *add(cs *Song, cs *p)
{
    if (Song == NULL)
    {
        Song = new song;
        cout << "name ?\n";
        cin >> Song->name;
        cout << "singer ?\n";
        cin >> Song->singer;
        Song->next = NULL;
        Song->prev = p;
        // Song was null .. but now it's the only node being .. so return it
        return Song;
    }
    // 2 lines: core code - i still don't get it
    Song->next = add(Song->next, Song);
    return Song;
}
// how head is still maintained up there ??
void playAll(cs *Song)
{
    if (Song == NULL)
        return;
    else
    {
        cout << Song->order << ") " << Song->name << " by " << Song->singer;
        cout ln
            sleep(1); // unistd.h
        playAll(Song->next);
    }
}
void OneSong(cs *curr, int ord)
{
    if (ord == curr->order)
    {
        cout << curr->order << ") " << curr->name << " by " << curr->singer;
        cout ln
            // don't proceed more
            return;
    }
    // curr = curr->next; // #still_ds i think wrong code : this ruins the head
    // better code is
    OneSong(curr->next, ord);
    // done
    return;
}
int main()
{
    // set_envi();

    cs *head = NULL;
    // now u can either add song .. play all .. play one .. exit
    int check_choice;
    do
    {
        cout << "\n1] add 1 song\n";
        cout << "2] play all song\n";
        cout << "3] play 1 song\n";
        cout << "0] exit\n";
        cout << "enter choice";
        cin >> check_choice;

        switch (check_choice)
        {
        case 1:
            head = add(head, head);
            break;
        case 2:
        {
            cout << "============================\n";
            playAll(head); // it's a show | print func
            break;
        }
        case 3: // searches for the song of order n
        {
            int n;
            cout << "Eneter number of the song you want \n";
            cin>> n;
            OneSong(head, n); // we pass the head to search from it
        // notice!!!!!
        start:
            cout << "============================\n";
            cout << "1) play again\n";
            cout << "2) play next\n";
            cout << "3) play previous\n";
            cout << "0) go to main menu\n";
            cout << "enter choice\n";
            int choice2;
            cin >> choice2;
            if (choice2 == 1)
            {
                cout << "============================\n";
                OneSong(head, n); // that's why we didn't ruin n value in the cin above.. but down there we can.. we should actually
                cout << "============================\n";
            }
            else if (choice2 == 2) // next
            {
                cout << "============================\n";
                OneSong(head, ++n);
                cout << "============================\n";
            }
            else if (choice2 == 3) // prev
            {
                cout << "============================\n";
                OneSong(head, --n);
                cout << "============================\n";
            }
            else if (choice2 == 0) // menu
            {
                break;
            }
            goto start;
        }
        default:
            break;
        }
    } while (check_choice);
}
```
[[MS-Mastering-4-critical-SKILLS-using-C++17-on-udemy]]


![[Pasted-image-20230804090957.png]]

