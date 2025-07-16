#todo
[Learn C# in Y Minutes](https://learnxinyminutes.com/csharp/)

```cs
            // You can use the @ symbol before a string literal to escape all characters in the string
            string path = "C:\\Users\\User\\Desktop";
            string verbatimPath = @"C:\Users\User\Desktop";

"Hello World".ToCharArray()

            // TryParse will default to the type's default value on failure
			if (int.TryParse("123", out tryInt)) // Function is boolean

//records are classes but immutable
			
			
            params string[] otherParams // captures all other parameters passed to method
			
            nullable?.Print(); // Use the Print() extension method if nullable isn't null
			
            // DYNAMIC OBJECTS (great for working with other languages)
				
                // Classes can inherit only one other class, but can implement any amount of interfaces,

//same class can be split accross multiple files .. 
public partial class A {} // file1.cs
public partial class A {} //file2.cs
			
            // x?.y will return null immediately if x is null; y is not evaluated
           public string SummonGenie()
			 => GenieName?.ToUpper(); // return null if GenieName is null ... OR GenieName.ToUpper otherwise


```

- [ ] [[out-ref-in-keywords-in-csharp]]
- [ ] [[tryparse-csharp]]
- [ ] yield-keyword