
```c#
#nullable enable

public string? GetName(int id) // May return null
{
    if (id == 1) return "Alice";
    return null; // allowed
}
```