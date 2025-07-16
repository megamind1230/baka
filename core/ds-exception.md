#1
q5
```
int *fun(){int *x=new int(10); return x;}

int main()

{

int *x=fun(); *x=20; cout<<*fun();//doesn't care about changes on x

}
```

![[Pasted-image-20231104154343.png]]