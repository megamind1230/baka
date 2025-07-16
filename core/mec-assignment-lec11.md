
# Solution for Assignment in C#


## Proj_1 
- [x] 
```csharp
/*Maths Class Implementation*/
using System;

namespace P_one
{
    public static class Maths
    {
        // Static methods so no instance is needed
        public static int Add(int a, int b) {
		return a + b;
        }
        public static int Subtract(int a, int b){
        return a - b;
        }
        public static int Multiply(int a, int b) {
        return a * b;
        }
        public static double Divide(int a, int b)
        {
            if (b == 0)
                throw new DivideByZeroException("Cannot divide by zero.");
            return (double)a / b;
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine($"5+3: {Maths.Add(5, 3)},\n5-3: {Maths.Subtract(5, 3)}\n5*3: {Maths.Multiply(5, 3)}\n");
            try
            {
                Console.WriteLine($"5/3: {Maths.Divide(5, 3)}");
                Console.WriteLine($"5/0: {Maths.Divide(5, 0)}");
            }
            catch (DivideByZeroException ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
```


## Proj_2
- [x] 1.Define 3D Point Class and the basic Constructors (use chaining in constructors).
- [x] 2.Override the ToString Function to produce this output:
	- [x] Point3D P = new Point3D (10,10,10); Console. WriteLine (P. ToString( )); Output: “Point Coordinates: (10, 10, 10)”
- [x] 3.Read from the User the Coordinates for 2 points P1, P2 
- [ ] (Check the input using try Pares, Parse, Convert).

- [ ] 4.Try to use == If (P1 == P2)   Does it work properly? 
- [x] 5.Define an array of points and sort this array based on X & Y coordinates.
- [ ] 6.Implement ICloneable interface to be able to clone the object. To implement more than one interface.
	class Point3D:IComparable ,ICloneable (Search)


```csharp
using System;

namespace P_two
{
    public class Point3D
    {
        public int _x { get; set; }
        public int _y { get; set; }
        public int _z { get; set; }

        // Constructor chaining - new term
        public Point3D() : this(0, 0, 0) { }
        public Point3D(int x) : this(x, 0, 0) { }
        public Point3D(int x, int y) : this(x, y, 0) { }
        public Point3D(int x, int y, int z)
        {
            _x = x;
            _y = y;
            _z = z;
        }

        // Override ToString
        public override string ToString()
        {
            return $"Point Coordinates: ({_x}, {_y}, {_z})";
        }


    }

    class Program
    {
        static void Main(string[] args)
        {
            Point3D P = new Point3D(10, 10, 10);
            Console.WriteLine(P.ToString());

            Point3D P1 = readP();
            Point3D P2 = readP();

            Console.WriteLine($"P1 == P2:{P1 == P2}");

            // Create and sort array of points
            Point3D[] points = new Point3D[5];
            for (int i = 0; i < points.Length; i++) // new - ai puts random values
            {
                points[i] = new Point3D(
                    new Random().Next(0, 100),
                    new Random().Next(0, 100),
                    new Random().Next(0, 100)
                );
            }

            Console.WriteLine("\nUN-sorted");
            foreach (var point in points)
                Console.WriteLine(point);

            Array.Sort(points);
            Console.WriteLine("\nSorted");
            foreach (var point in points)
                Console.WriteLine(point);

            // clone ????
        }

        static Point3D readP() // new - ai
        {
            while (true)
            {
                Console.Write("enter 3 coordi: a b c");
                string input = Console.ReadLine();
                string[] parts = input.Split(' ');

                if (parts.Length != 3)
                    continue;

                if (int.TryParse(parts[0], out int x) &&
                    int.TryParse(parts[1], out int y) &&
                    int.TryParse(parts[2], out int z))
                {
                    return new Point3D(x, y, z);
                }
            }
        }
    }
}
```

[[0-learn-csharp]]