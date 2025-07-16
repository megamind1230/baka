#1

```cpp
struct L {int data; struct L *next;}x;
#define sL struct L
int main()
{
//set_envi();
    // x is a copy of the struct ready to be used
    x.data = 2;
    cout<< x.data ; cout ln //2

}
```

```cpp
// version 2 with recursion .. single linked list

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define sg struct gammal
struct gammal
{
    char name[20];
    int payment;
    struct gammal *next;
};
sg *add(sg *g) // not void .. return ptr
{
    if (g == NULL)
    {
        g = (sg *)malloc(sizeof(sg));
        printf("Enter the name: ");
        scanf("%s", g->name);
        printf("Enter payment: ");
        scanf("%d", &g->payment);
        g->next = NULL;
        return g; 
        // if this {return} is used once .. it starts the stack poping / reversing
    }
    g->next = add(g->next); // @@@@@@@@@@@@ core of code @@@@@@@@@@@@
/*
same = add(same); // idk if it's always like this or not #still_ds 
*/
/*
السطر اللي فوق دا
بنفترض إن ال g->next هتكون فاضية null
{طيب تخيل لو مكانتش فاضية}
إذن هنمشي في ال recursion
ومش هندخل على ال if
ونحرك لقدام مع ال nodes
لحد ما بالفعل هيحصل وندخل في ال if كده كده
وساعتها هنعمل return بتاعة ال if
واللي هتكون سبب في إن ال stack يبدأ يعكس ويرد على ال func calls
لحد ما نوصل لل return اللي تحت على طول دي
واللي هتبعتنا على ال main
*/

    return g; // this last return is sent to main
}
void show(sg *g) // as it was 
{
    while (g != NULL)
    {
        printf("------------\n");
        printf("%s\n", g->name);
        printf("%d\n", g->payment);
        g = g->next;
    }
}
int main()
{
    int a;
    sg *head = NULL; // initiate with NULL .. no need to allocate some space for {head} here in {main} .. we do this in func {add}
    // قمنا بجعلها تساوى NULL حتى لا يخزن بها garbage //
    do
    {
        // notice the double quotes
        printf("1) add\n"
               "2) show\n"
               "please enter a number: ");
        scanf("%d", &a);
        if (a == 1)
            head = add(head); // so add must return ptr
        else if (a == 2)
            show(head);
    } while (a);
}
```

الدرس بعده ليه علاقة
![[Pasted-image-20230802111729.png]]
