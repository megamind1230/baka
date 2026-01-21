* DONE pagination in c#
SCHEDULED: <2026-01-14 Wed 09:00>
- [X] [Pagination in C#. Pagination is essential in almost all… | by Deniz Can Yüksel | Medium](https://medium.com/@dnzcnyksl/pagination-in-c-e346a34e7984)
- [X] [A Brief Guide to Implementing Pagination in a C# Endpoint - DEV Community](https://dev.to/seanmdrew/a-brief-guide-to-implementing-pagination-in-a-c-endpoint-5anc)
```cs
// in a controller
public IActionResult Index(int page = 1)
{
    int pageSize = 10;

    var students = _context.Students
        .Skip((page - 1) * pageSize)
        .Take(pageSize)
        .ToList();

    return View(students);
}
```
