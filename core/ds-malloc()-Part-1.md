#1

هنا بنحاول نطبق ال
dynamic memory allocation
على لغة مفيهاش DS
زي ال C
```c
int x[n];
//---------------------
#include <stdlib.h> 
	int n; cin>>n;
	int *x = (int*) malloc(n * sizeof(int));// takes bytes
	printf("%lu\n", sizeof(long long int)); //%lu > long unsigned.. use whatever datatype to check
```

malloc returns void* > cast it to whatever u want

![[Pasted-image-20230725073509.png]]
