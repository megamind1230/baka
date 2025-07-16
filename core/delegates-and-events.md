its like 
`variable = function`
both have same signature

# delegates

> delegate doesnt have `invoke`

> `func` is a delegate

# events
An event can also be used to trigger delegates
```c#
public event void WeatherChanged(string x);
	//same as
	pulic event Action<string> WeatherChanged;
```


