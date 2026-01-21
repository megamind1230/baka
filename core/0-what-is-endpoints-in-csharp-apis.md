SCHEDULED: <2026-01-18 Sun>
An endpoint in C# APIs is a URL + HTTP method that maps a request to specific server-side code and returns a response.
    components
        http method +
        route/link pattern +
        handler(aka controller)(the c# code to process the request)+
        metadata sometimes
### **Minimal APIs** are great for:
-   Simple microservices
-   Quick prototypes
-   Small, focused APIs
-   Serverless functions
### **Controller-Based APIs** are better for:
-   Complex applications
-   Applications needing MVC features
-   Large codebases with separation of concerns
-   Applications with views (MVC)
