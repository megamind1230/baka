- [x] [Difference between Abstract Class and Interface in C# | GeeksforGeeks](https://www.geeksforgeeks.org/difference-between-abstract-class-and-interface-in-c-sharp/)

|                   | abstract class                                  | interface               |
| ----------------- | ----------------------------------------------- | ----------------------- |
| multi inheritance | some languages dont support it<br>like c#, java | supported               |
| speed             | fast                                            | somehow slow            |
| when to use       | same kind & same overall behavior               | only share some methods |

# abstract class
```c#
// abstract class 'G'
public abstract class G { // abstract method 'gfg1()'
    public abstract void gfg1();
}

// class 'G' inherit // in child class 'G1'
public class G1 : G { // abstract method 'gfg1()' // declare here with // 'override' keyword
    public override void gfg1()
    { Console.WriteLine(&quot;Class name is G1&quot;); }
}

// class 'G' inherit in // another child class 'G2'
public class G2 : G { // same as the previous class
    public override void gfg1() {
        Console.WriteLine(&quot;Class name is  G2&quot;);
    }
}

// Driver Class
public class main_method { // Main Method
    public static void Main()
    { // 'obj' is object of class // 'G' class
        // 'G' cannot
        // be instantiate
        G obj;

        // instantiate class 'G1'
        obj = new G1();
        // call 'gfg1()' of class 'G1'
        obj.gfg1();

        // instantiate class 'G2'
        obj = new G2();
        // call 'gfg1()' of class 'G2'
        obj.gfg1();
    }
}
```

# interface
```c#
interface interface1 {
 // method having only declaration // not definition
    void show();
}
// A class that implements the interface.
class MyClass : interface1 {
    // providing the body part of function
    public void show()
    { Console.WriteLine(&quot;Welcome to GeeksforGeeks!!!&quot;); }

    // Main Method
    public static void Main(String[] args)
    { // Creating object
        MyClass obj1 = new MyClass();
        // calling method
        obj1.show();
    }
}
```