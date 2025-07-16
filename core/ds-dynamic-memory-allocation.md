#1

malloc calloc realloc > in heap
static memory allocation variable > reserved {before execution in the stack} {linear}
meanwhile dynamic memory allocation variable > reserved {at run time in the heap} {hierarchical}
heap memory is  a hierarchical DS

```cpp
int *x = new int(5);

int *y = new int(3);

y = x;// {y} points to whatever {x} points to .. {*y} has the {5} now

bug( *x , *y); // 5 5

bug(x, y); // same address

// so if i changed y .. x will change and vice versa.. they're now {soulmates}

*y = 1;

bug( *x , *y); // 1 1

*x = 2;

bug( *x , *y); // 2 2
```

![[Pasted-image-20230729130144.png]]
