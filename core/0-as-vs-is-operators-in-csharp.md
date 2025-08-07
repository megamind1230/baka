
|         | as                                          | is                             |
| ------- | ------------------------------------------- | ------------------------------ |
| of type | not bool                                    | bool                           |
| returns | `this` obj: if compatible<br>`null`: if not | true: if same<br>false: if not |
# is
```cs
using System;
public class P { }
public class P1 : P { }

public class P2 { }

public class GFG {
    public static void Main()
    {
        P o1 = new P();

        P1 o2 = new P1();

        Console.WriteLine(o1 is P);
        Console.WriteLine(o1 is Object);
        Console.WriteLine(o2 is P1);
        Console.WriteLine(o2 is Object);
        Console.WriteLine(o2 is P1);

        Console.WriteLine(o1 is P2); //false
        Console.WriteLine(o2 is P2); //false
    }
}
```

# as
```cs
using System;
class Y { }
class Z { }

class GFG {
    static void Main()
    {
        object[] o = new object[5];
        o[0] = new Y();
        o[1] = new Z();
        o[2] = "Hello";
        o[3] = 4759.0;
        o[4] = null;

        for (int q = 0; q < o.Length; ++q) {
            string str1 = o[q] as string;

            Console.Write("{0}:", q);

            if (str1 != null) { Console.WriteLine("'" + str1 + "'"); }
            else { Console.WriteLine("Is is not a string"); }
        }
// 0:Is is not a string
// 1:Is is not a string
// 2:'Hello'
// 3:Is is not a string
// 4:Is is not a string
    }
}

```