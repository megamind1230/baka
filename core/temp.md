## 🔹 Basics (1–20)
### 1. What does LINQ stand for?
A. Language Integrated Query
B. Logical Integrated Query
C. Language Internal Query
D. Local Integrated Query
**Answer:** A
### 2. LINQ is mainly used to:
A. Create UI
B. Query data
C. Manage memory
D. Compile code
**Answer:** B
### 3. Which namespace is required for LINQ?
A. `System.Collections`
B. `System.Linq`
C. `System.Data`
D. `System.Query`
**Answer:** B
### 4. Which LINQ method filters data?
A. Select
B. Where
C. OrderBy
D. GroupBy
**Answer:** B
### 5. `Select()` is used to:
A. Filter data
B. Sort data
C. Project data
D. Group data
**Answer:** C
### 6. What does LINQ return?
A. Arrays only
B. Lists only
C. `IEnumerable<T>`
D. Objects only
**Answer:** C
### 7. Which is a valid LINQ query?
```csharp
var r = numbers.Where(n > 5);
```
A. Valid
B. Invalid
**Answer:** B
### 8. Correct syntax:
A. `Where(n => n > 5)`
B. `Where(n > 5)`
C. `Where(n = 5)`
D. `Where(n > = 5)`
**Answer:** A
### 9. LINQ works with:
A. Arrays only
B. Databases only
C. Any `IEnumerable`
D. Classes only
**Answer:** C
### 10. Which keyword is used in query syntax?
A. select
B. where
C. from
D. All of the above
**Answer:** D
### 11. LINQ was introduced in:
A. C# 1.0
B. C# 2.0
C. C# 3.0
D. C# 4.0
**Answer:** C
### 12. Which LINQ syntax is more common in practice?
A. Query syntax
B. Method syntax
C. XML syntax
D. SQL syntax
**Answer:** B
### 13. What does `OrderBy()` do?
A. Filters
B. Projects
C. Sorts ascending
D. Sorts descending
**Answer:** C
### 14. Which method sorts descending?
A. Order
B. Sort
C. OrderDescending
D. OrderByDescending
**Answer:** D
### 15. Which returns a single element?
A. First()
B. Select()
C. Where()
D. GroupBy()
**Answer:** A
### 16. If no element exists, `First()` will:
A. Return null
B. Return default
C. Throw exception
D. Skip
**Answer:** C
### 17. Safe alternative to `First()`:
A. Single()
B. FirstOrDefault()
C. Last()
D. Take()
**Answer:** B
### 18. `Count()` returns:
A. Object
B. Bool
C. Int
D. Long
**Answer:** C
### 19. `Any()` returns:
A. Count
B. First item
C. Bool
D. Object
**Answer:** C
### 20. `All()` checks:
A. At least one
B. Exactly one
C. All elements
D. None
**Answer:** C
## 🔹 Intermediate (21–60)
### 21. What does `Take(3)` do?
A. Skips 3
B. Takes first 3
C. Takes last 3
D. Filters
**Answer:** B
### 22. `Skip(5)` means:
A. Ignore first 5
B. Take first 5
C. Remove last 5
D. Sort
**Answer:** A
### 23. `Distinct()` removes:
A. Nulls
B. Duplicates
C. Objects
D. Order
**Answer:** B
### 24. `Single()` expects:
A. ≥1 element
B. ≤1 element
C. Exactly 1 element
D. Any number
**Answer:** C
### 25. `SingleOrDefault()` throws if:
A. No element
B. More than one
C. Null exists
D. List empty
**Answer:** B
### 26. `ToList()` does what?
A. Filters
B. Executes query
C. Sorts
D. Groups
**Answer:** B
### 27. LINQ queries are:
A. Immediate
B. Deferred
C. Parallel
D. Cached
**Answer:** B
### 28. Which forces execution?
A. Where
B. Select
C. ToArray
D. OrderBy
**Answer:** C
### 29. Deferred execution means:
A. Runs immediately
B. Runs when iterated
C. Runs once
D. Runs at compile time
**Answer:** B
### 30. `GroupBy()` returns:
A. Dictionary
B. List
C. `IEnumerable<IGrouping>`
D. Array
**Answer:** C
### 31. Which operator joins sequences?
A. Join
B. Merge
C. Combine
D. UnionAll
**Answer:** A
### 32. `Join()` is similar to:
A. SQL INNER JOIN
B. LEFT JOIN
C. RIGHT JOIN
D. FULL JOIN
**Answer:** A
### 33. Which method performs LEFT JOIN?
A. Join
B. GroupJoin
C. Union
D. Zip
**Answer:** B
### 34. `SelectMany()` is used for:
A. Nested collections
B. Sorting
C. Grouping
D. Filtering
**Answer:** A
### 35. `Zip()`:
A. Merges collections index-wise
B. Sorts
C. Groups
D. Filters
**Answer:** A
### 36. `Union()`:
A. Keeps duplicates
B. Removes duplicates
C. Sorts
D. Filters
**Answer:** B
### 37. `Intersect()` returns:
A. Differences
B. Common elements
C. All elements
D. Unique elements
**Answer:** B
### 38. `Except()` returns:
A. Common
B. Differences
C. All
D. Sorted
**Answer:** B
### 39. `Contains()` returns:
A. Index
B. Bool
C. Object
D. Count
**Answer:** B
### 40. `Sum()` works on:
A. Any type
B. Numeric types
C. Strings
D. Objects
**Answer:** B
### 41. `Average()` returns:
A. Int
B. Double
C. Decimal
D. Depends on input
**Answer:** D
### 42. `Max()` returns:
A. First element
B. Largest element
C. Count
D. Bool
**Answer:** B
### 43. `Min()` returns:
A. Smallest
B. Largest
C. Count
D. Null
**Answer:** A
### 44. `ThenBy()` is used after:
A. Select
B. Where
C. OrderBy
D. GroupBy
**Answer:** C
### 45. `ThenByDescending()` is for:
A. Filtering
B. Secondary sort
C. Projection
D. Grouping
**Answer:** B
### 46. Which LINQ method is lazy?
A. ToList
B. Count
C. Where
D. Sum
**Answer:** C
### 47. What happens if source changes before enumeration?
A. Error
B. Old result
C. New result
D. Cached
**Answer:** C
### 48. Which uses lambda expressions?
A. Method syntax
B. Query syntax
C. XML syntax
D. SQL syntax
**Answer:** A
### 49. Query syntax compiles into:
A. SQL
B. Method syntax
C. IL
D. XML
**Answer:** B
### 50. LINQ to Objects works on:
A. Databases
B. XML
C. In-memory collections
D. Files
**Answer:** C
### 51. LINQ to SQL queries:
A. XML
B. Databases
C. Files
D. APIs
**Answer:** B
### 52. Which may throw exception on empty?
A. First
B. FirstOrDefault
C. Any
D. All
**Answer:** A
### 53. `DefaultIfEmpty()` is used for:
A. Sorting
B. Left joins
C. Filtering
D. Grouping
**Answer:** B
### 54. `AsEnumerable()`:
A. Executes query
B. Switches to LINQ to Objects
C. Sorts
D. Filters
**Answer:** B
### 55. `Cast<T>()` does:
A. Filters
B. Casts elements
C. Projects
D. Sorts
**Answer:** B
### 56. `OfType<T>()`:
A. Casts all
B. Filters by type
C. Sorts
D. Groups
**Answer:** B
### 57. `Reverse()`:
A. Sorts descending
B. Reverses order
C. Filters
D. Groups
**Answer:** B
### 58. `SequenceEqual()`:
A. Compares references
B. Compares sequences
C. Sorts
D. Filters
**Answer:** B
### 59. `TakeWhile()`:
A. Takes until false
B. Takes fixed count
C. Filters
D. Groups
**Answer:** A
### 60. `SkipWhile()`:
A. Skips until false
B. Skips fixed
C. Filters
D. Groups
**Answer:** A
## 🔹 Advanced / Interview Traps (61–120)
### 61. LINQ is:
A. Runtime feature
B. Compile-time feature
C. Both
D. Neither
**Answer:** C
### 62. LINQ expressions use:
A. Delegates
B. Expression trees
C. Pointers
D. Reflection only
**Answer:** B
### 63. Which supports translation to SQL?
A. LINQ to Objects
B. LINQ to XML
C. LINQ to Entities
D. All
**Answer:** C
### 64. `IQueryable<T>` differs from `IEnumerable<T>` by:
A. Performance
B. Deferred execution
C. Expression trees
D. Syntax
**Answer:** C
### 65. `IQueryable` executes:
A. In memory
B. At database
C. At compile time
D. In cache
**Answer:** B
### 66. Which is evaluated client-side?
A. LINQ to SQL
B. IQueryable
C. LINQ to Objects
D. EF Core
**Answer:** C
### 67. Using unsupported method in EF Core causes:
A. Compile error
B. Runtime error
C. Client evaluation
D. Silent ignore
**Answer:** B
### 68. `AsNoTracking()` is used to:
A. Improve performance
B. Track changes
C. Sort
D. Filter
**Answer:** A
### 69. `Select()` vs `SelectMany()`:
A. Same
B. Flatten vs not
C. Sort difference
D. Filter difference
**Answer:** B
### 70. `Any()` vs `Count() > 0`:
A. Same performance
B. Any is faster
C. Count is faster
D. Same
**Answer:** B
### 71. `FirstOrDefault()` returns default for:
A. Reference types → null
B. Value types → 0
C. Both
D. None
**Answer:** C
### 72. Multiple enumeration can cause:
A. Exception
B. Performance hit
C. Memory leak
D. Compile error
**Answer:** B
### 73. Best way to avoid re-enumeration?
A. Where
B. Select
C. ToList
D. Skip
**Answer:** C
### 74. `Deferred execution` improves:
A. Memory
B. Performance
C. Flexibility
D. All
**Answer:** D
### 75. LINQ is thread-safe?
A. Yes
B. No
C. Depends on source
D. Always
**Answer:** C
### 76. `Parallel LINQ` is called:
A. PLINQ
B. LINQ++
C. Async LINQ
D. Task LINQ
**Answer:** A
### 77. Enable PLINQ by:
A. AsParallel()
B. Parallel()
C. RunParallel()
D. Task.Run()
**Answer:** A
### 78. PLINQ is best for:
A. Small collections
B. IO-bound
C. CPU-bound
D. UI
**Answer:** C
### 79. `ForEach()` exists on:
A. IEnumerable
B. IQueryable
C. List
D. Array
**Answer:** C
### 80. LINQ encourages:
A. Imperative style
B. Declarative style
C. Procedural style
D. OOP only
**Answer:** B
### 81. LINQ expressions are immutable?
A. Yes
B. No
C. Sometimes
D. EF only
**Answer:** A
### 82. `let` keyword in query syntax:
A. Filters
B. Stores temp variable
C. Sorts
D. Groups
**Answer:** B
### 83. LINQ is slower than loops?
A. Always
B. Never
C. Sometimes
D. Always faster
**Answer:** C
### 84. Best use of LINQ:
A. Complex logic
B. Simple queries
C. Heavy loops
D. UI rendering
**Answer:** B
### 85. `Expression<Func<T>>` is used in:
A. LINQ to Objects
B. LINQ to Entities
C. Loops
D. Arrays
**Answer:** B
### 86. LINQ improves:
A. Readability
B. Maintainability
C. Productivity
D. All
**Answer:** D
### 87. `OrderBy()` stability:
A. Stable
B. Unstable
C. Random
D. Undefined
**Answer:** A
### 88. `GroupBy()` execution:
A. Immediate
B. Deferred
C. Cached
D. Parallel
**Answer:** B
### 89. `Aggregate()` is:
A. Filter
B. Reduce
C. Map
D. Sort
**Answer:** B
### 90. `Aggregate()` similar to:
A. Reduce
B. Map
C. Filter
D. Join
**Answer:** A
### 91. LINQ supports chaining?
A. Yes
B. No
**Answer:** A
### 92. LINQ is part of:
A. CLR
B. BCL
C. JIT
D. CTS
**Answer:** B
### 93. LINQ providers translate queries into:
A. SQL
B. XML
C. Provider-specific
D. IL
**Answer:** C
### 94. Best practice for large queries?
A. Client evaluation
B. Server-side execution
C. Nested LINQ
D. PLINQ
**Answer:** B
### 95. `ToDictionary()` throws if:
A. Duplicate keys
B. Null values
C. Empty list
D. Sorted
**Answer:** A
### 96. `Lookup` vs `Dictionary`:
A. Mutable vs immutable
B. Allows duplicate keys
C. Faster
D. Same
**Answer:** B
### 97. LINQ is functional-programming inspired?
A. Yes
B. No
**Answer:** A
### 98. Which breaks deferred execution?
A. Select
B. Where
C. ToList
D. OrderBy
**Answer:** C
### 99. LINQ queries can be reused?
A. Yes
B. No
**Answer:** A
### 100. `IGrouping<TKey,T>` contains:
A. Key only
B. Values only
C. Key + values
D. Index
**Answer:** C
### 101. LINQ is best avoided in:
A. Hot paths
B. Simple queries
C. Readability
D. Filtering
**Answer:** A
### 102. `Select()` vs `Where()`:
A. Projection vs filtering
B. Same
C. Sorting
D. Grouping
**Answer:** A
### 103. LINQ queries are composable?
A. Yes
B. No
**Answer:** A
### 104. LINQ works with custom collections?
A. Yes
B. No
**Answer:** A
### 105. Requirement for LINQ support:
A. IEnumerable
B. Array
C. List
D. Object
**Answer:** A
### 106. LINQ reduces:
A. Boilerplate code
B. Performance
C. Memory
D. Safety
**Answer:** A
### 107. LINQ is evaluated per enumeration?
A. Yes
B. No
**Answer:** A
### 108. Multiple `Where()` calls:
A. Multiple loops
B. Single combined execution
C. Error
D. Slower always
**Answer:** B
### 109. LINQ encourages immutability?
A. Yes
B. No
**Answer:** A
### 110. LINQ to XML works with:
A. Databases
B. XML documents
C. JSON
D. Files
**Answer:** B
### 111. `XDocument` is used in:
A. LINQ to SQL
B. LINQ to XML
C. LINQ to Objects
D. EF
**Answer:** B
### 112. LINQ can replace loops?
A. Always
B. Sometimes
C. Never
**Answer:** B
### 113. LINQ expressions are strongly typed?
A. Yes
B. No
**Answer:** A
### 114. LINQ improves testability?
A. Yes
B. No
**Answer:** A
### 115. LINQ allows anonymous types?
A. Yes
B. No
**Answer:** A
### 116. Anonymous types are:
A. Mutable
B. Immutable
C. Static
D. Abstract
**Answer:** B
### 117. `select new {}` creates:
A. Class
B. Struct
C. Anonymous type
D. Tuple
**Answer:** C
### 118. LINQ + async?
A. Direct support
B. Needs async extensions
C. Impossible
D. Deprecated
**Answer:** B
### 119. `await foreach` works with:
A. IEnumerable
B. IQueryable
C. IAsyncEnumerable
D. List
**Answer:** C
### 120. LINQ is best described as:
A. Library
B. Language feature + APIs
C. Framework
D. Tool
**Answer:** B
Below are **100 HARD-ONLY LINQ TRAPS + EF Core–SPECIFIC MCQs**, **interview-grade**, focused on **gotchas, performance, translation issues, and real-world bugs**.
## 🔴 LINQ Traps (1–50)
### 1. What is the biggest hidden cost of LINQ?
A. Memory allocation
B. Deferred execution
C. Multiple enumeration
D. Lambda compilation
**Answer:** C
### 2. Which LINQ call causes **immediate execution**?
A. Where
B. Select
C. GroupBy
D. ToList
**Answer:** D
### 3. Why is `Count() > 0` dangerous?
A. Throws exception
B. Enumerates entire sequence
C. Allocates memory
D. Uses recursion
**Answer:** B
### 4. Better alternative to `Count() > 0`?
A. First()
B. Any()
C. Single()
D. Take(1)
**Answer:** B
### 5. What happens if you enumerate a LINQ query twice?
A. Cached result
B. Re-executed
C. Exception
D. Undefined
**Answer:** B
### 6. Which LINQ call hides an O(n²) bug?
A. Where
B. Select
C. Any inside loop
D. OrderBy
**Answer:** C
### 7. Why is LINQ in `foreach` sometimes slow?
A. Lambda cost
B. Multiple enumeration
C. GC pressure
D. Boxing
**Answer:** B
### 8. `First()` vs `Single()` key difference?
A. Performance
B. Exception behavior
C. Return type
D. Syntax
**Answer:** B
### 9. Which throws if more than one element exists?
A. First
B. Last
C. Single
D. Any
**Answer:** C
### 10. `FirstOrDefault()` trap with value types?
A. Returns null
B. Returns default value (e.g. 0)
C. Throws
D. Skips
**Answer:** B
### 11. Why is `DefaultIfEmpty()` dangerous?
A. Memory leak
B. Hides missing data
C. Breaks ordering
D. Forces execution
**Answer:** B
### 12. What does `GroupBy()` NOT guarantee?
A. Deferred execution
B. Ordering
C. Grouping
D. Key selection
**Answer:** B
### 13. Which LINQ method is most allocation-heavy?
A. Where
B. Select
C. GroupBy
D. Any
**Answer:** C
### 14. Why is `SelectMany()` tricky?
A. Flattens structure silently
B. Slow execution
C. Forces materialization
D. Breaks typing
**Answer:** A
### 15. LINQ favors which paradigm?
A. Imperative
B. Declarative
C. Procedural
D. Object-based
**Answer:** B
### 16. What breaks deferred execution?
A. Select
B. Where
C. ToArray
D. Skip
**Answer:** C
### 17. LINQ closures capture variables:
A. By value
B. By reference
C. By copy
D. By snapshot
**Answer:** B
### 18. Closure trap result?
```csharp
for (int i = 0; i < 3; i++)
  funcs.Add(() => i);
```
A. 0,1,2
B. 3,3,3
C. Compile error
D. Random
**Answer:** B
### 19. LINQ lambdas are compiled:
A. At runtime
B. At compile time
C. JIT only
D. Ahead-of-time
**Answer:** A
### 20. `OrderBy().Take(n)` vs `Take(n).OrderBy()`?
A. Same
B. First is faster
C. Second is faster
D. Second is wrong
**Answer:** B
### 21. Why avoid `Reverse()` before `OrderBy()`?
A. No effect
B. Performance waste
C. Wrong result
D. Exception
**Answer:** B
### 22. Which LINQ method is NOT lazy?
A. Where
B. Select
C. Count
D. Skip
**Answer:** C
### 23. Why is `Aggregate()` risky?
A. Hard to read
B. Exception-prone
C. Non-translatable
D. All
**Answer:** D
### 24. LINQ chains create:
A. One iterator
B. Multiple iterators
C. One loop
D. One allocation
**Answer:** B
### 25. Why is LINQ bad in hot paths?
A. Syntax
B. GC pressure
C. Debugging
D. Typing
**Answer:** B
### 26. `Any(predicate)` vs `Where(predicate).Any()`?
A. Same
B. First is faster
C. Second is faster
D. Second throws
**Answer:** B
### 27. `Contains()` on List vs HashSet?
A. Same complexity
B. List is faster
C. HashSet is O(1)
D. Both O(n)
**Answer:** C
### 28. LINQ hides which cost?
A. Iteration
B. Allocation
C. Execution timing
D. All
**Answer:** D
### 29. Which LINQ call causes boxing?
A. Select
B. OfType
C. Cast
D. Aggregate
**Answer:** D
### 30. LINQ expressions are immutable?
A. Yes
B. No
**Answer:** A
### 31. Why avoid `ToList()` too early?
A. Memory
B. Breaks query composition
C. Forces client-side work
D. All
**Answer:** D
### 32. `Select()` vs `foreach` performance?
A. Same
B. Select slower
C. Foreach slower
D. Random
**Answer:** B
### 33. LINQ exceptions usually appear:
A. At compile time
B. At query creation
C. At enumeration
D. At GC
**Answer:** C
### 34. LINQ hides which bug type?
A. Null reference
B. Off-by-one
C. N+1
D. Deadlock
**Answer:** C
### 35. Which method causes full scan?
A. Any
B. First
C. Last
D. Take
**Answer:** C
### 36. Why is `Last()` dangerous?
A. Throws
B. Full enumeration
C. Unstable
D. Allocates
**Answer:** B
### 37. Best alternative to `Last()`?
A. Reverse().First()
B. OrderByDescending().First()
C. SkipWhile
D. Aggregate
**Answer:** B
### 38. LINQ queries are:
A. Cached
B. Stateless
C. Stateful
D. Singleton
**Answer:** B
### 39. LINQ is deterministic?
A. Always
B. Depends on source
C. Never
D. Random
**Answer:** B
### 40. `Distinct()` requires:
A. Equals override
B. GetHashCode override
C. Both
D. None
**Answer:** C
### 41. `SequenceEqual()` compares:
A. References
B. Values
C. Order + values
D. Keys
**Answer:** C
### 42. LINQ favors readability over:
A. Safety
B. Performance
C. Maintainability
D. Debugging
**Answer:** B
### 43. Why is debugging LINQ hard?
A. Lambdas
B. Deferred execution
C. Stack traces
D. All
**Answer:** D
### 44. LINQ is best avoided in:
A. APIs
B. Hot loops
C. Data queries
D. Filtering
**Answer:** B
### 45. LINQ hides control flow?
A. Yes
B. No
**Answer:** A
### 46. LINQ queries can change result if source mutates?
A. Yes
B. No
**Answer:** A
### 47. LINQ prefers immutability?
A. Yes
B. No
**Answer:** A
### 48. LINQ reduces:
A. Code size
B. Bugs
C. Performance
D. Boilerplate
**Answer:** D
### 49. LINQ can cause hidden allocations?
A. Yes
B. No
**Answer:** A
### 50. Biggest LINQ interview trap?
A. Syntax
B. Deferred execution
C. GroupBy
D. Join
**Answer:** B
## 🔵 EF Core–Specific LINQ MCQs (51–100)
### 51. EF Core translates LINQ into:
A. C#
B. SQL
C. IL
D. XML
**Answer:** B
### 52. Which LINQ executes on DB server?
A. IEnumerable
B. IQueryable
C. List
D. Array
**Answer:** B
### 53. `AsEnumerable()` causes:
A. Server-side eval
B. Client-side eval
C. Exception
D. Cache
**Answer:** B
### 54. Biggest EF Core LINQ mistake?
A. Using joins
B. Client evaluation
C. Indexes
D. Async
**Answer:** B
### 55. EF Core throws if query cannot translate?
A. Compile time
B. Runtime
C. Silent ignore
D. Warning only
**Answer:** B
### 56. EF Core LINQ runs when?
A. Query creation
B. Enumeration
C. DbContext creation
D. Migration
**Answer:** B
### 57. `Include()` is for:
A. Filtering
B. Sorting
C. Eager loading
D. Lazy loading
**Answer:** C
### 58. `ThenInclude()` is used for:
A. Sorting
B. Nested navigation
C. Filtering
D. Grouping
**Answer:** B
### 59. EF Core lazy loading requires:
A. Virtual properties
B. Proxies
C. Configuration
D. All
**Answer:** D
### 60. `AsNoTracking()` improves:
A. Correctness
B. Performance
C. Security
D. Sorting
**Answer:** B
### 61. EF Core LINQ supports all C# methods?
A. Yes
B. No
**Answer:** B
### 62. Unsupported method causes:
A. Client eval
B. Exception
C. Ignore
D. SQL error
**Answer:** B
### 63. EF Core prefers:
A. Method syntax
B. Query syntax
C. SQL
D. XML
**Answer:** A
### 64. `Select()` before `Include()`?
A. Allowed
B. Breaks Include
C. Faster
D. Same
**Answer:** B
### 65. EF Core `GroupBy()` behavior?
A. Always SQL
B. Often client-side
C. Always client
D. Always server
**Answer:** B
### 66. EF Core `DateTime.Now` in query?
A. Translatable
B. Not translatable
C. Cached
D. Optimized
**Answer:** B
### 67. `Contains()` translates to:
A. JOIN
B. IN
C. EXISTS
D. LIKE
**Answer:** B
### 68. Large `Contains()` list causes:
A. Fast query
B. SQL explosion
C. Cache
D. Exception
**Answer:** B
### 69. `Any()` translates to:
A. COUNT
B. EXISTS
C. JOIN
D. GROUP
**Answer:** B
### 70. `FirstOrDefault()` without ordering is:
A. Deterministic
B. Non-deterministic
C. Error
D. Cached
**Answer:** B
### 71. EF Core tracks entities by:
A. Value
B. Reference
C. Primary key
D. Index
**Answer:** C
### 72. Multiple `Include()` may cause:
A. Cartesian explosion
B. Deadlock
C. Exception
D. Cache
**Answer:** A
### 73. Split queries fix:
A. Performance
B. Cartesian explosion
C. Ordering
D. Tracking
**Answer:** B
### 74. `AsSplitQuery()` does:
A. Single SQL
B. Multiple SQL
C. Client eval
D. Cache
**Answer:** B
### 75. EF Core default tracking mode?
A. NoTracking
B. Tracking
C. Lazy
D. Detached
**Answer:** B
### 76. Best for read-only queries?
A. Tracking
B. AsNoTracking
C. Lazy loading
D. Include
**Answer:** B
### 77. EF Core LINQ supports:
A. Regex
B. Custom C# methods
C. SQL functions
D. All
**Answer:** C
### 78. `EF.Functions.Like()` maps to:
A. =
B. LIKE
C. IN
D. EXISTS
**Answer:** B
### 79. Client-side evaluation risk?
A. Security
B. Performance
C. Memory
D. All
**Answer:** D
### 80. `ToListAsync()` advantage?
A. Faster CPU
B. Non-blocking
C. Less memory
D. Cached
**Answer:** B
### 81. Async LINQ prevents:
A. Deadlocks
B. Blocking threads
C. SQL errors
D. N+1
**Answer:** B
### 82. EF Core query caching depends on:
A. Values
B. Expression shape
C. Order
D. DbContext
**Answer:** B
### 83. Changing LINQ expression changes:
A. Cache key
B. SQL engine
C. Index
D. Tracking
**Answer:** A
### 84. EF Core LINQ is executed:
A. Per DbContext
B. Per enumeration
C. Per app
D. Once
**Answer:** B
### 85. Best way to debug EF Core LINQ?
A. Console.WriteLine
B. SQL logging
C. Debugger only
D. Unit tests
**Answer:** B
### 86. EF Core LINQ prefers:
A. Simple expressions
B. Complex lambdas
C. Nested queries
D. Reflection
**Answer:** A
### 87. `Select(new DTO)` effect?
A. Faster
B. Less data fetched
C. No tracking
D. All
**Answer:** D
### 88. Projection prevents:
A. Include
B. Tracking
C. Lazy loading
D. All
**Answer:** D
### 89. EF Core LINQ N+1 occurs with:
A. Include
B. Lazy loading
C. Select
D. OrderBy
**Answer:** B
### 90. Best fix for N+1?
A. Lazy loading
B. Include
C. SelectMany
D. Join
**Answer:** B
### 91. EF Core `Join()` vs navigation?
A. Same
B. Join faster
C. Navigation preferred
D. Deprecated
**Answer:** C
### 92. EF Core LINQ translation happens:
A. At compile time
B. Runtime
C. Migration
D. Startup
**Answer:** B
### 93. Using local method inside LINQ:
A. Works
B. Breaks translation
C. Cached
D. Optimized
**Answer:** B
### 94. EF Core supports `GroupJoin`?
A. Fully
B. Partially
C. No
D. Deprecated
**Answer:** B
### 95. `Distinct()` in EF Core requires:
A. PK
B. SQL DISTINCT
C. Hashing
D. Index
**Answer:** B
### 96. EF Core LINQ prefers server-side work?
A. Yes
B. No
**Answer:** A
### 97. Biggest EF Core LINQ smell?
A. ToList early
B. Client eval
C. Missing index
D. Async
**Answer:** B
### 98. EF Core LINQ is safest when:
A. Simple
B. Complex
C. Nested
D. Dynamic
**Answer:** A
### 99. LINQ + EF Core debugging rule:
A. Trust LINQ
B. Check generated SQL
C. Ignore performance
D. Use loops
**Answer:** B
### 100. Golden EF Core LINQ rule:
A. Write C#
B. Think SQL
C. Avoid LINQ
D. Use loops
**Answer:** B
Below are **30 “SPOT-THE-BUG” LINQ QUESTIONS**, **interview-grade**, focused on **real bugs, traps, and misleading code**.
Each question shows **code**, asks **what’s wrong**, then gives the **correct answer + fix**.
Markdown-ready ✔
Senior-level ✔
# 🐞 Spot-the-Bug: LINQ (30 Questions)
### 1. Deferred execution bug
```csharp
var adults = people.Where(p => p.Age >= 18);
people.Clear();
Console.WriteLine(adults.Count());
```
**Bug:** Query executes after collection mutation
**Fix:** Materialize early
```csharp
var adults = people.Where(p => p.Age >= 18).ToList();
```
### 2. Multiple enumeration
```csharp
if (items.Any())
    Console.WriteLine(items.Count());
```
**Bug:** Enumerates twice
**Fix:**
```csharp
var list = items.ToList();
if (list.Count > 0)
    Console.WriteLine(list.Count);
```
### 3. `Count() > 0` trap
```csharp
if (users.Count() > 0) { }
```
**Bug:** Full enumeration
**Fix:**
```csharp
if (users.Any()) { }
```
### 4. `First()` on empty sequence
```csharp
var user = users.First();
```
**Bug:** Throws exception if empty
**Fix:**
```csharp
var user = users.FirstOrDefault();
```
### 5. `Single()` misuse
```csharp
var admin = users.Single(u => u.Role == "Admin");
```
**Bug:** Throws if 0 or >1 admins
**Fix:**
```csharp
var admin = users.SingleOrDefault(u => u.Role == "Admin");
```
### 6. Closure capture bug
```csharp
var funcs = new List<Func<int>>();
for (int i = 0; i < 3; i++)
    funcs.Add(() => i);
```
**Bug:** Captures same variable
**Fix:**
```csharp
for (int i = 0; i < 3; i++)
{
    int local = i;
    funcs.Add(() => local);
}
```
### 7. EF Core client evaluation
```csharp
db.Users.Where(u => IsValid(u.Name)).ToList();
```
**Bug:** `IsValid` not translatable to SQL
**Fix:** Move logic after materialization
```csharp
db.Users.AsEnumerable().Where(u => IsValid(u.Name));
```
### 8. `Include()` ignored
```csharp
db.Orders.Select(o => o.Customer).Include(c => c.Address);
```
**Bug:** `Include` after `Select` is ignored
**Fix:**
```csharp
db.Orders.Include(o => o.Customer).ThenInclude(c => c.Address);
```
### 9. `Last()` performance trap
```csharp
var last = items.Last();
```
**Bug:** Full enumeration
**Fix:**
```csharp
var last = items.OrderByDescending(x => x.Id).First();
```
### 10. `GroupBy()` ordering assumption
```csharp
var groups = items.GroupBy(x => x.Type);
```
**Bug:** Group order not guaranteed
**Fix:**
```csharp
var groups = items.GroupBy(x => x.Type)
                  .OrderBy(g => g.Key);
```
### 11. N+1 query (EF Core)
```csharp
foreach (var user in db.Users)
    Console.WriteLine(user.Posts.Count);
```
**Bug:** Lazy loading causes N+1
**Fix:**
```csharp
db.Users.Include(u => u.Posts).ToList();
```
### 12. `ToList()` too early
```csharp
db.Users.ToList().Where(u => u.IsActive);
```
**Bug:** Filters in memory
**Fix:**
```csharp
db.Users.Where(u => u.IsActive).ToList();
```
### 13. `Any()` inside loop
```csharp
foreach (var u in users)
    if (admins.Any(a => a.Id == u.Id)) { }
```
**Bug:** O(n²)
**Fix:**
```csharp
var adminIds = new HashSet<int>(admins.Select(a => a.Id));
```
### 14. `Distinct()` without equality
```csharp
items.Distinct();
```
**Bug:** Reference comparison only
**Fix:** Override `Equals` & `GetHashCode`
### 15. `FirstOrDefault()` null bug
```csharp
var user = users.FirstOrDefault(u => u.Id == id);
Console.WriteLine(user.Name);
```
**Bug:** Possible `NullReferenceException`
**Fix:**
```csharp
if (user != null) Console.WriteLine(user.Name);
```
### 16. EF Core non-deterministic `First()`
```csharp
db.Users.First();
```
**Bug:** No ordering → random row
**Fix:**
```csharp
db.Users.OrderBy(u => u.Id).First();
```
### 17. `Contains()` with large list
```csharp
db.Users.Where(u => ids.Contains(u.Id));
```
**Bug:** Huge SQL `IN` clause
**Fix:** Batch or temp table
### 18. `SelectMany()` flattening bug
```csharp
var names = users.SelectMany(u => u.Name);
```
**Bug:** Flattens characters
**Fix:**
```csharp
var names = users.Select(u => u.Name);
```
### 19. Mutating source during enumeration
```csharp
foreach (var x in items.Where(x => x > 5))
    items.Remove(x);
```
**Bug:** Collection modified during iteration
**Fix:**
```csharp
foreach (var x in items.Where(x => x > 5).ToList())
```
### 20. `AsEnumerable()` performance hit
```csharp
db.Users.AsEnumerable().Where(u => u.IsActive);
```
**Bug:** Forces client-side filtering
**Fix:** Remove `AsEnumerable`
### 21. `Skip().Take()` without ordering
```csharp
db.Users.Skip(10).Take(10);
```
**Bug:** Unstable paging
**Fix:**
```csharp
db.Users.OrderBy(u => u.Id).Skip(10).Take(10);
```
### 22. `Average()` on empty sequence
```csharp
items.Average();
```
**Bug:** Throws exception
**Fix:**
```csharp
items.DefaultIfEmpty(0).Average();
```
### 23. `Any()` vs `Count()`
```csharp
if (items.Count() == 1)
```
**Bug:** Enumerates entire sequence
**Fix:**
```csharp
items.Take(2).Count() == 1
```
### 24. `Select()` allocation trap
```csharp
items.Select(x => new HeavyObject(x)).Any();
```
**Bug:** Allocates unnecessarily
**Fix:**
```csharp
items.Any();
```
### 25. `GroupBy()` client-side EF Core
```csharp
db.Users.GroupBy(u => u.Role).Select(g => g.Count());
```
**Bug:** May run client-side
**Fix:** Ensure translation support
### 26. Comparing floats
```csharp
items.Where(x => x.Price == 0.1);
```
**Bug:** Floating-point equality
**Fix:** Use tolerance
### 27. `SequenceEqual()` order bug
```csharp
a.SequenceEqual(b);
```
**Bug:** Order-sensitive
**Fix:**
```csharp
a.OrderBy(x => x).SequenceEqual(b.OrderBy(x => x));
```
### 28. EF Core projection tracking confusion
```csharp
db.Users.Select(u => new User { Name = u.Name });
```
**Bug:** Entity not tracked
**Fix:** Use DTO or track explicitly
### 29. `foreach` vs LINQ side effects
```csharp
items.Select(x => x++);
```
**Bug:** No side effects applied
**Fix:** Use loop or materialize
### 30. Biggest hidden LINQ bug
```csharp
var q = db.Users.Where(u => u.IsActive);
```
**Bug:** Looks executed but isn’t
**Fix:** Enumerate (`ToList`, `foreach`, etc.)
If you want next:
* 🔥 **senior interview “what will this output?”**
* 🔥 **EF Core SQL vs LINQ comparison**
* 🔥 **performance tuning drills**
* 🔥 **rewrite bad LINQ to optimal LINQ**
Just say 👍