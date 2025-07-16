#1
![[Pasted-image-20231104160318.png]]
>why q2 (dynamic alloc) doens't print


q5
```
class member
{
public:
    int data;
    member() { cout << "Created"; }
};
int main()
{
    member y; // prints
    cout << " hi ";
    member *x; // doesn't print anything
    cout << " hello ";
    x = new member; // but this one does print
    cout << " howdy ";
    x->data = 10;
    y = *x;
    cout << x->data;
    cout << " skrrrr ";
    cout << ' ' << y.data;
    cout << " ayo ";
}
```