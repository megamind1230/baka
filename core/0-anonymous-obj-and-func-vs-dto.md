- [x] [[0-anonymous-type]]
- [x] [[DTO-in-csharp]]

## Comparison Table
>DTO >  Data Transfer Objects

| Feature         | Anonymous Objects | Anonymous Functions | DTOs                     |
| --------------- | ----------------- | ------------------- | ------------------------ |
| Type Definition | Implicit          | Implicit            | Explicit                 |
| Scope           | Method-level      | Method-level        | Anywhere                 |
| Mutability      | Immutable         | N/A                 | Typically mutable        |
| Serialization   | Limited           | N/A                 | Fully supported          |
| Reusability     | None              | Within method       | Across application       |
| Best For        | Temporary data    | Short operations    | Structured data transfer |
# when to use DTOs instead of anonymous types
- When you need to pass data between methods/classes
- When working with APIs (serialization/deserialization)
- When you need to add behavior or validation
- When the structure needs to be stable
# ex
```cs
// DTO definition
public record OrderSummaryDto(int OrderId, string CustomerName, decimal Total);

// Method using all concepts
public IEnumerable<OrderSummaryDto> GetOrderSummaries(Func<Order, bool> filter) // Anonymous function as parameter (filter)
{
    // Anonymous object in intermediate step
    var intermediate = db.Orders
        .Where(filter)
        .Select(o => new { 
            o.Id, 
            Customer = o.Customer.Name,
            Items = o.OrderItems
        });
    
    
    // DTO as final result
    return intermediate.Select(x => new OrderSummaryDto(
        x.Id,
        x.Customer,
        x.Items.Sum(i => i.Price * i.Quantity)
    ));
}

```