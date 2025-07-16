#1

```cpp
//version 1 no recursion
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

//--------------------------------------
#define sg struct gammal
struct gammal //node
{
    char name[20];
    int payment;
    struct gammal *next;
};
void add(sg *g) // normal func .. no recursion
{
    char nameinFunc[20];
    int paymentinFunc;
    printf("enter name & payment \n");
    scanf("%s%d", nameinFunc,&paymentinFunc);
    
    if(g->payment ==-1)// if no one added
    {
        //set val 
        g->payment = paymentinFunc;
        strcpy(g->name, nameinFunc); // strcpy(dest , src);
        //notice the node after
        g->next = NULL;
    }
    else//there are some nodes .. even if there's just 1 with a null after
    {
        //reach the null .. (proceed till next is null) .. to create new node at null
        while(g->next != NULL)
            g = g->next;
        g->next = (sg*)malloc(sizeof(sg));// we now created a new node at null
        g = g->next; //lets jump into it ({g->next} in this line is not null now)
        
        //--------
        //so set some vals 
        g->payment = paymentinFunc;
        strcpy(g->name, nameinFunc);
        //notice the node after
        g->next = NULL; //terminate with null.. don't forget
        //--------
    }
}
void show(sg* g)
{
    while(g != NULL )// print all nodes // using {g->next != NULL} will leave the last node without printing
    {
        printf("%s\n%d ", g->name, g->payment);
        // next node
        g = g->next;
        printf("\n--------\n");
    }
}
int main()
{
    // first person initial payment .. {manually} 
    sg*head = (sg*)malloc(sizeof(sg));
    head->payment = -1;
    int a;
    do{
	    printf("1) add 2) show \n pls enter a number");
        scanf("%d", &a);
        a==1? add(head): a==2? show(head) : exit(0);
    }while(a);
}
```
- ![[Pasted-image-20230731114610.png]]