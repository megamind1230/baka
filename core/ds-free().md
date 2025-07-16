#1

```cpp
#include <stdlib.h>
#include <stdio.h>
//--------------------------------------
int main()
{
    // using malloc
    int *x = (int *)malloc(20); // 5 ints
    printf("%d\n", x);
 // prints the addr of x
        x = (int *)malloc(20); // totaly another 5 ints
    printf("%d\n", x);
// prints new other addr for x
        //--------------------------------------
        int *y = (int *)malloc(20); // 5 ints
    // printf("%d\n", y);
    // vals without assignment
    for (int i = 0; i < 5; i++)
    {
        printf("%d ", y[i]); // prints garbage
        y[i] = i + 1;
    }
    printf("\n"); // after assignment
    for (int i = 0; i < 5; i++)
        printf("%d ", y[i]);
    /*
    */
    free(y);
    y = (int *)malloc(20); // 5 ints
    printf("\n");
    printf("%d\n", y); // depends on the compiler {{{ but it should print the same addr above }}}
    for (int i = 0; i < 5; i++)
        printf("%d ", y[i]); // depends on the compiler (but it should print the same vals above {as garbage .. left from the last operation of value setting})
    printf("\n");
}

```

![[Pasted-image-20231103175105.png]]
