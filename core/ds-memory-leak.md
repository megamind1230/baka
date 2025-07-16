#1

![[Pasted-image-20231104153213.png]]

```
//trash 
int *x = fun();

bug(x, *x); //x : 0x55839d9fceb0 | *x : 0

bug(fun(), *fun()); //fun() : 0x55839d9fd300 | *fun() : 0

  

// different addr but still have same value

free(fun());

  

*x = 10;

bug(x, *x); //x : 0x55839d9fceb0 | *x : 10

bug(fun(), *fun());// fun() : 0x55839d9fd360 | *fun() : 0
```

q3 q4
```
int *fun()

{

int *x = (int *)calloc(1, sizeof(int));

return x;

}

  

int main()

{

// int *x=fun(); free(fun());

int *x=fun(); *x=10; bug(*x , *fun() , x, fun()); // different addr & different values

  

}

```
q5

```
int *fun()

{

int *x = (int *)calloc(1, sizeof(int));

return x;

}

  

int main()

{

// int *x=fun(); free(fun());

int *x = fun();

*x = 10;

free(x);

cout << *fun(); // it's like no relation (between value of *fun() and *x)

}
```