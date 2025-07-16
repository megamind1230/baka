`ref` > pass by reference
```cs
		int maxCount = 0, count; // ref params must have value
		MethodSignatures(ref maxCount, out count); // unlike out

            // note refs everywhere
            ref string item = ref FindItem(arr, "array");
            item = "apple";
            Console.WriteLine(arr[3]);  // => apple


```

`out`
```cs
//wtf .. the argument passed in as 'count' will hold the value of 15 outside of this function
count = 15; // out param must be assigned before control leaves the method

```