- [x] [Kalutu/csharp-for-everybody: A collection of simple, practical projects that developers can use to hone their skills and gain experience working with C#.](https://github.com/Kalutu/csharp-for-everybody)

```cs
			//case insesetive + remove punc & symbols
            text = string.Concat(text.Where(x => char.IsLetterOrDigit(x) || char.IsWhiteSpace(x))).ToLower();

			Environment.Exit(0); // same as exit(0); in cpp

			// compare ignoring case
			contact.Name.Equals(name, StringComparison.OrdinalIgnoreCase)
		
			// no need to press Enter to read input
            char letter = char.ToUpper(Console.ReadKey().KeyChar);
			
			//sums month expenses
			            decimal totalExpense = expenses
                .Where(e => e.Date.Month == month && e.Date.Year == year)
                .Sum(e => e.Amount);


```
