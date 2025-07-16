#1

https://github.com/megamind1230/gammal_tech/blob/main/DS%20Recursion%20Part%202%20ex5.cpp


```cpp
int fibo(int x)
{
	if(x<2) return x;// this line is better
	return fibo(x-1) + fibo(x-2);
}
```
	طريقة ملء ال stack هنا حسب الكود دا
	لو كنت هترسم ال recursion tree
	ولأن ال stack لازم فيه تنظيم
	هيستعمل حاجة شبه ال 
	depth first search

![[Pasted-image-20230718102102.png]]
