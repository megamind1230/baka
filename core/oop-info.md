#1
# Keywords
class =~ template = user defined data type = object ctor = blueprint for creating objs 
obj = instance of a class
attributes = vars inside a class
method = func inside a class
access specifier / modifiers = public , private , protected
inside vs outside class definition of a method
	better for mem & algo ds to define methods outside
- static method of a class
	- wrong ![[Pasted-image-20231013192302.png]]
	- correct ![[Pasted-image-20231013192331.png]]

# Protected


![[Pasted-image-20231013195757.png]]
```txt

Class members
declared as protected can be used only by the following:
● Member functions of the class that originally declared
these members. 
{known}
● Friends of the class that originally declared these
members.
{known}
● Classes derived with public or protected access from the
class that originally declared these members. 
{known}
● Direct privately derived classes that also have private
access to protected members.
{idk this + what ?}

```

#still/oop

![[Pasted-image-20231013195022.png]]

# Encapsulation
setters ( impl) ,  getters (interface)
![[Pasted-image-20231014193637.png]]
![[Pasted-image-20231014191951.png]]


# Multiple Inheritance

![[Pasted-image-20231017102940.png]]

# More about Inheritance

- ![[Pasted-image-20231021101507.png]]
	- 3 ﻷن print ساعتها هتكون برايفيت
	- 4 ايوه ينفع من غير اسم الكلاس تست طالما مفيش تعارض مع اسم تاني .. ومفيش طباعة ﻷنه مفيش cout



# Virtual Function

```cpp

class employee{
public:
	virtual void tools()//virtual here
	{
		cout<<"laptop"<<endl;
	}
};

class frontend: virtual public employee // notice virtual here
{
	public:
		void print(){
			cout<<"html, css, js"<<endl;
		}
};

class backend: public virtual employee // also here
{
	public:
		void print(){
			cout<<"php, sql"<<endl;
		}
};
// so virtual is used with the func & those direct children {not indirect children}

class fullstack : public frontend, public backend // fullstack is indirect child of employee so no need for virtual here
{
public:
	void print()
	{
		frontend::print();
		backend::print();
	}
};

int main()
{
	fullstack x;
	x.tools(); //works.. just calls the one in employee .. no copies
	
}
```

```cpp
/* 
virtual function means that it can not be copied into the derived classes {tho it can be overrided}{to call the overrided version see the pic below}
and
but it's just found in the parent class
*/
```

[[func-overloading-overriding-overwrite]]

![[Pasted-image-20231028134047.png|380]]
like the following
```cpp

class A
{
public:
	virtual void display()
		{
		cout << "Base class is invoked"<<endl;
		}
};
class B:public A
{
public:
	void display()
		{
		cout << "Derived Class is invoked"<<endl;
		}
};
int main()
{
A* a; // pointer of base class
B b; // object of derived class
a = &b;
a->display(); // Late Binding occurs //Derived Class is invoked
}
```
- ![[Pasted-image-20231021111750.png]]
	- 5 
		- x is inaccessible in this context .. cuz
		- in Q4 > class B, C are ==inherited as private by default== for class D
		- so {x} is private for class D
		- if you change line 4 to be {class D: public B, public C ..}
		- it will work

# Abstraction
![[Pasted-image-20231021113639.png]]

# Abstract Class
![[Pasted-image-20231028134830.png]]
![[Pasted-image-20231028134844.png]]
- ![[Pasted-image-20231021121439.png]]
	- 3 طالما الديرايف عمل لنفسه نسخة من فن
		- يبقى عادي ناخد منه اوبجكت
	- 4, 5
		- لاحظ مفيش نسخة من فن في ال class A
		- لذلك مينفعش تاخد منه نسخة

# Default Arguments
- ![[Pasted-image-20231022182859.png]]
	- 5 .. in drv there is not fun .. that u can pass arguments to

# Friend Class
- ![[Pasted-image-20231022184742.png]]
	- 4 .. {data} is private in {Test}
	- 5 .. there is no {data} member in {other}
![[Pasted-image-20231028135722.png]]
![[Pasted-image-20231028135741.png]]
# Polymorphism
- mainly divided into 2 types
	- Runtime poly .. overRiding a func
	- compile time poly .. overLoading a func

a func can be overLoaded in the same class
```cpp

#include<iostream>
using namespace std;
class base
{
public:
virtual void print () //{{{print here is virtual in base}}}
{ cout<< "print base class" <<endl; }
void show () // {{{show is not virtual in base}}}
{ cout<< "show base class" <<endl; }
};
class derived:public base
{
public: // {{{both have different bodies in child}}}
void print () // print () is already virtual function in derived class,// we could also declared as virtual void print () explicitly
{ cout<< "print derived class" <<endl; }
void show ()
{ cout<< "show derived class" <<endl; }
};
// main function
//www.gammal.tech
int main()
{
base *bptr;
derived d;
bptr = &d;
// virtual function, binded at runtime (Runtime polymorphism)
bptr->print(); //   {{{{this shows child's ... cuz it was virtual in base}}}}
// Non-virtual function, binded at compile time
bptr->show();//    {{{but this shows the base .. cuz it wasn't virtual in base}}}
}

```
![[Pasted-image-20231022190306.png]]