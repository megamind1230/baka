- [x] [[0-anonymous-obj-and-func-vs-dto]]
> used primarily for temporary data holding


1. Projections in LINQ to SQL/Entity Framework
```csharp
var results = db.Customers
                .Where(c => c.Age > 21)
                .Select(c => new { c.Name, c.Email });
```

2. Joining tables
```csharp
var query = from p in db.Products
            join c in db.Categories on p.CategoryId equals c.Id
            select new { ProductName = p.Name, Category = c.Name };
```

3. Shaping data for display
```csharp
var displayData = db.Orders
                   .Select(o => new { 
                       OrderId = o.Id, 
                       Total = o.Items.Sum(i => i.Price),
                       CustomerName = o.Customer.Name 
                   });
```