#1

البشمهندس عبدالرحمن بيقول إن ال

malloc searches for consecutive places in memory

![[Pasted-image-20230725074325.png]]

```c
int *x = (int*) malloc(n * sizeof(int));
if(x == NULL)
{
cout<<"not allocated\n"; // if n is so fckn big, or when no enough memory
return 0
}
```

![[Pasted-image-20230725075007.png]]
