


# publisher and subscriber


```cs
public void Subscribe(WeatherStation station)
{
station.WeatherChanged += ShowWeather;
	// same as
	// WeatherChanged().WeatherChanged = ShowWeather();
}
```

# message broker
