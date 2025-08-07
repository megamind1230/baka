> linq = `l`ang `in`tegrated `q`uery


> works on `IEnumerbale objs, sql, xml, ado.net datasets`
> with same consistent declarative query syntax

```cs
int[] numbers = {1,2,3,4,5};
var even = from num in numbers
		where num % 2 ==0
		select num;

foreach (var n in even)
	cw(n)
```
> linq syntax is `from where select`
