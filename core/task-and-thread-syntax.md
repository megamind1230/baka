
```cs
            var words = new List<string> {"dog", "cat", "horse", "pony"};

            Parallel.ForEach(words,
                new ParallelOptions() { MaxDegreeOfParallelism = 4 },
                word =>
                {
                    Console.WriteLine(word);
                }
            );


```