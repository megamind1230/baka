#1


```cpp
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
struct gammal {
    char data[20];
    struct gammal *next;
};
#define sg struct gammal
int main()
{
    sg *head = (sg*)malloc(sizeof(sg)); // first node
    strcpy(head->data,"Aly");
    //--
    head->next = (sg*)malloc(sizeof(sg)); // second node
    strcpy(head->next->data,"Ahmed");


    //--
    head->next->next = NULL; // determine the end with NULL
    //--

    sg *temp = head; // temp > not to ruin head
    while(temp != NULL){
        printf("%s\n",temp->data);
        temp = temp->next; // it's like the ++
    }
    /*
	Aly
	Ahmed
	*/
}
```

![[Pasted-image-20230730113409.png]]
