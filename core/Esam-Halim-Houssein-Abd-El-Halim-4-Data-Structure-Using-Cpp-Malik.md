#1
# ch1
- ![[Pasted-image-20230925210043.png]]
- ![[Pasted-image-20230925210136.png]]
- ![[Pasted-image-20230925210157.png]]
- ![[Pasted-image-20230925210211.png]]
- ![[Pasted-image-20230925210258.png]]
- ![[Pasted-image-20231026070737.png]]
- ![[Pasted-image-20231026071045.png]]
- ![[Pasted-image-20231026071128.png]]
- ![[Pasted-image-20231026071204.png]]
	- the book uses some new terms ![[Pasted-image-20231026071231.png]]
- ![[Pasted-image-20231026071257.png]]
- ![[Pasted-image-20231026071320.png]]
- ![[Pasted-image-20231026071357.png]]
- ![[Pasted-image-20231026071421.png]]
- ![[Pasted-image-20231026071502.png]]
- ![[Pasted-image-20231026071511.png]]
- ![[Pasted-image-20231026071528.png]]
- dispenser > دا الجهاز اللي فيه الحاجة الساقعة مثلا .. تحط فيه فلوس .. يسقطلك الحاجة
- ![[Pasted-image-20231026071649.png]]
- ![[Pasted-image-20231026071701.png]]
- ![[Pasted-image-20231026071717.png]]
- ![[Pasted-image-20231026071740.png]]
- ![[Pasted-image-20231026071754.png]]
- ![[Pasted-image-20231026072249.png]]
- ![[Pasted-image-20231026072300.png]]
- ![[Pasted-image-20231026072311.png]]

# ch2
- redefining (or overriding)
- If the corresponding functions in the base class and the derived class have the same name but different sets of parameters, this is function overloading in the derived class
- ![[Pasted-image-20231208193952.png]]
- `boxType(double l = 0, double w = 0, double h = 0);` default parameters in constructor
	- also shown in UML ![[Pasted-image-20231208194155.png]]
- To define new classes, you create new header files (normally)
- In composition, one or more members of a class are objects of another class type
```
.
.
.
private: 
personType name; //composition
dateType bDay; 
int personID; 
};
```
- ![[Pasted-image-20231208194500.png]]
- The ability to combine data and operations is called encapsulation
- ![[Pasted-image-20231208194545.png]]
- The pointer `this`
```cpp
class classIllusFriend {
friend void friendFunc(classIllusFriend cIFObject);
.
.
. 
};

void friendFunc(classIllusFriend cIFObject) //formal para
{
classIllusFriend localTwoObject; //local var
.
.
.
}
```

- ![[Pasted-image-20231208194854.png]]
- C++ consists of both binary and unary operators. It also has a `ternary operator`, which cannot be overloaded.
- OVERLOADING THE BINARY OPERATORS AS MEMBER FUNCTIONS
	- `myRectangle.operator#(yourRectangle)`
```cpp
returnType className::operator# (const className& otherObject) const 
{ 
//algorithm to perform the operation 
return value; 
}
```
- OVERLOADING THE BINARY OPERATORS (ARITHMETIC OR RELATIONAL) AS NONMEMBER FUNCTIONS
	- operator#(myRectangle, yourRectangle)
```cpp
friend returnType operator#(const className&, const className&);
//must be friend
.
.
.
returnType operator#(const className& firstObject, const className& secondObject) 
{ //algorithm to perform the operation 
return value; 
}
```

-  INSERTION OPERATOR (<<) ==insertion to the screen==
```cpp
friend ostream& operator<<(ostream&, const className&);
.
.
.
ostream& operator<<(ostream& osObject, const className& cObject) 
{ 
//local declaration, if any 
//Output the members of cObject. 
//osObject << . . . 
//Return the stream object. 
return osObject; 
}
```
- EXTRACTION OPERATOR (>>) ==extraction from the screen==
```cpp
friend istream& operator>>(istream&, className&);
istream& operator>>(istream& isObject, className& cObject) 
{ 
//local declaration, if any 
//Read the data into cObject. 
//isObject >> . . . 
//Return the stream object. 
return isObject;
}
```
- ![[Pasted-image-20231208195456.png]]
- ![[Pasted-image-20231208195521.png]]
- FUNCTION TEMPLATE
```cpp
template <class Type>
Type larger(Type x, Type y);
int main(){
	larger(5, 6);
	larger('A','B');
}

template<class Type>
Type larger(Type x, Type y) 
{
	if (x >= y) 
		return x; 
	else
		return y; 
}
```
- CLASS TEMPLATE
Class templates are called parameterized types
```cpp
template <class elemType>
class listType {
public:
	void insert(const elemType& newElement);
	.
	.
	.
};
template<class elemType>
void listType::insert(const elemType& newElement) 
{ 
. 
.
. 
}
```
- Header File and Implementation File of a Class Template
```
Until now, we have placed the definition of the class (in the specification file) and the definition of the member functions (in the implementation file) in separate files. The object code was generated from the implementation file (independently of any client code) and linked with the client code. This strategy does not work with class templates. Passing parameters to a function has an effect at run time, whereas passing a parameter to a class template has an effect at compile time. Because the actual parameter to a class is specified in the client code, and because the compiler cannot instantiate a function template without the actual parameter to the template, we can no longer compile the implementation file independently of the client code.

This problem has several possible solutions. We could put the class definition and the definitions of the function templates directly in the client code, or we could put the class definition and the definitions of the function templates together in the same header file. Another alternative is to put the class definition and the definitions of the functions in separate files (as usual), but include a directive to the implementation file at the end of the header file (that is, the specification file). In either case, the function definitions and the client code are compiled together. For illustrative purposes, we will put the class definition and the function definitions in the same header file
```