#1
#has_corrupt_img 
[[c-mcq-sol]]


- photos
	- ![[Pasted-image-20230105123833.png]]
	- ![[Pasted-image-20230105124025.png]]
	- ![[Pasted-image-20230105124209.png]]
```c
0 1 are those before 2 .. notice % x == 0 تعني يقبل القسمة على x باقي القسمة دائما أقل من المقسوم عليه
```
#still/c

- float precision > `printf("%0.2f",x);` 
	- a precision of 2 numbers after the decimal point 

-   system conversions
    -   Bin to
        -   Dec
        -  ![[Pasted-image-20230105124404.png]]
    -   Dec to { same method }
	    -   Bin
		    - ![[c-info#1]]
	    -   Oct
		    - ![[c-info#2]]
	    -   Hex
	        -   needs A = 10 and so on
    -   Oct to
	    - Dec
		    - ![[c-info#3]]
- octal
    - scanning & printing
	    - ![[c-info#4]]
-   hexadecimal
    -   printing hex
	    - ![[c-info#5]]
    -   also can be scanned
	    - ![[c-info#6]]
-   global var
	- https://github.com/megamind1230/gammal_tech/blob/main/Global%20Variable%20ex3.c
	- 
	- ![[Pasted-image-20230105125855.png]]inside fun() > no need for the :: related to the global x specification
    - ![[Pasted-image-20230105125928.png]]
- c string p2
- https://github.com/megamind1230/gammal_tech/blob/main/C%20String%20Part%202%20ex2.c
	- ![[Pasted-image-20230105130008.png]]
-   string header file
- https://github.com/megamind1230/gammal_tech/blob/main/String%20Header%20File%20ex2.c
- https://github.com/megamind1230/gammal_tech/blob/main/String%20Header%20File%20ex4.c
- https://github.com/megamind1230/gammal_tech/blob/main/String%20Header%20File%20ex5.c
- 
    -   some c string funcs { must have string.h included }
        -   strcpy(y, x) copy into y whatever in x ... provided that y is big enough
        -   strcmp(x, y ) gives 0 when same
        -   strcat(x, y ) appends y at the end of x ... provided that x is big enough

-   small tricky syntax
    -   number of digits
        - ![[c-info#7]]
    -   nested ternary operator
        - `printf(x>0? "+ve" : (x<0 ? "-ve" : "Zero"));`
    -   switch ranges
        - ![[c-info#8]]

- how to trace
	- ![[Pasted-image-20230105131539.png]]

```c
//code to test
char names[3][3][30];
//..... 
scanf("%[^\n]", names[i][j]); // don't put s after % it may ruin the code sometimes scanf("%*c");
```
`isupper > ctype`
`~` bitwise not

https://github.com/megamind1230/gammal_tech/blob/main/Bitwise%20Operator%20AND_OR_XOR_RL-shift%20ex4.c

to switch 2 int var with ^
```cpp
x^=y
y^=x
x^=y
```

```cpp
//# Bitwise Operator NOT
  /*

    what's the mx +ve int val ? know that int is 4B

    4 * 8 = 32 bit , with signed int >

    1 MSD is for sign while the rest of 31 are magnitude

    then mx +ve int val is when all of the 31 magnitude bits are 1's

    */

   int x = 1 << 31; //-ve number > negate it to get res

   x=~x;

   printf("x = %d",x);//2147483647
```
const > capital as a convention
enum 
![[Pasted-image-20230126143903.png]] 
math.h >
	asin = sin inverse (in radian & should be stored in float or the like)
	nan > not a number

https://github.com/megamind1230/gammal_tech/blob/main/math_dot_h._all_ex.c

typedef old new; // في الغالب مع ال datatypes

https://github.com/megamind1230/gammal_tech/blob/main/typedef%20(1)%20all_ex.c

Define (Macro)

https://github.com/megamind1230/gammal_tech/blob/main/Define%20(Macro)%20all_ex.c

ممكن شبه نشفر الكود بالشكل دا .. بحيث معرفوش غير اللي معرف ال macros
![[Pasted-image-20230126152047.png]]
`#include <stdbool.h>`
![[Pasted-image-20230127114712.png]]

https://github.com/megamind1230/gammal_tech/blob/main/C%20Practice%201%20(2D%20Array)%20adv.c
https://github.com/megamind1230/gammal_tech/blob/main/C%20Practice%201%20(2D%20Array)%20(1)%20ex8_9.c

https://github.com/megamind1230/gammal_tech/blob/main/C%20Practice%203%20(Vaccine)%20ex.c

https://github.com/megamind1230/gammal_tech/blob/main/C%20Practice%205%20(Sum%20of%20Even)%20prob_sol.c

https://github.com/megamind1230/gammal_tech/blob/main/C%20Practice%209%20(Search)%20ex3.c

https://github.com/megamind1230/gammal_tech/blob/main/C%20Practice%2012%20(Digits)%20adv.c

https://github.com/megamind1230/gammal_tech/blob/main/Learn%20more%20ex.txt


https://github.com/megamind1230/gammal_tech/blob/main/c%20practice%201%20ex10.c

https://github.com/megamind1230/gammal_tech/blob/main/for%20loop%20ex7.c

https://github.com/megamind1230/gammal_tech/blob/main/C%20Programming%20Practice%203%20adv.c

https://github.com/megamind1230/gammal_tech/blob/main/Arrays%20Part%201%20prob_sol.c

https://github.com/megamind1230/gammal_tech/blob/main/shouldBe1%20arabicSummary.c

https://github.com/megamind1230/gammal_tech/blob/main/Arrays%20Part%202%20ex4.c

https://github.com/megamind1230/gammal_tech/blob/main/Arrays%20Part%202%20ex5.c

https://github.com/megamind1230/gammal_tech/blob/main/Arrays%20Part%202%20ex6.c

https://github.com/megamind1230/gammal_tech/blob/main/Binary%20Program%20ex1.c

https://github.com/megamind1230/gammal_tech/blob/main/Number%20Systems%20Conversions%20decToBin.c

https://github.com/megamind1230/gammal_tech/blob/main/Number%20Systems%20Conversions%20decToOct.c

https://github.com/megamind1230/gammal_tech/blob/main/Number%20Systems%20Conversions%20octToDec.c

https://github.com/megamind1230/gammal_tech/blob/main/Number%20Systems%20Conversions%20decToHex.c

https://github.com/megamind1230/gammal_tech/blob/main/Number%20Systems%20Conversions%20hexToDec.c

https://github.com/megamind1230/gammal_tech/blob/main/2D%20arrayPDF%20TheTriagleShape.c

https://github.com/megamind1230/gammal_tech/blob/main/2D%20arrayPDF%20TheHollowSqaure.c

https://github.com/megamind1230/gammal_tech/blob/main/2D%20array%20ex3.c

https://github.com/megamind1230/gammal_tech/blob/main/2D%20array%20ex4_5.c

https://github.com/megamind1230/gammal_tech/blob/main/2D%20Array%20Part%202%20prob_sol.c



C Practice 2 (Tracing)
![[Pasted-image-20230128202936.png]]
C Practice 7 (Mercedes)
a prog to check for a brand duplication
```c
#include <stdio.h>

#include <string.h>

int main(void)

{

    char

        brands[20][100] = {"Marcedec", "BMW", "Mazda", "Marcedec", "BMW", "Marcede"};

    char Entered_name[20];

    int i, j, cntr = 0;

    printf("Enter the brand: ");

    scanf("%s", Entered_name);

    for (i = 0; Entered_name[i]; i++)

        if (Entered_name[i] >= 'A' && Entered_name[i] <= 'Z')

            Entered_name[i] += 32;

    for (i = 0; i < 6; i++)

    {

        for (j = 0; brands[i][j]; j++)

            if (brands[i][j] >= 'A' && brands[i][j] <= 'Z')

                brands[i][j] += 32;

        cntr += strcmp(Entered_name, brands[i]) == 0;

    }

    printf("%d\n", cntr);

}
```

C Practice 11 (Blood Test)



very simple prime test
```c
int isPrime(int p){
    int i;
    for(i=2;i<p;i++)
        if(p%i==0)
            return 0;
    return p>1?1:0;
}
```

C Practice 16 (Switch Range)
```c
 switch(x){
        case 91 ... 100:
            printf("A\n");
            break;
```
- optimized scanning...{read until}
	- reading a string
	- https://github.com/megamind1230/gammal_tech/blob/main/Array%20of%20Strings%20Part%202%20(4)%20adv_ex4.c
	- https://github.com/megamind1230/gammal_tech/blob/main/Array%20of%20Strings%20Part%202%20(5)%20adv_ex5.c
	- https://github.com/megamind1230/gammal_tech/blob/main/Array%20of%20Strings%20Part%202%20(6)%20adv_ex6.c
	- https://github.com/megamind1230/gammal_tech/blob/main/Array%20of%20Strings%20var_ex3.c
	- https://github.com/megamind1230/gammal_tech/blob/main/Array%20of%20Strings%20Part%202%20adv_ex2.c
	- https://github.com/megamind1230/gammal_tech/blob/main/Array%20of%20Strings%20Part%202%20adv_ex3.c
	- 
	- ![[c-info#c]]

- 66 C Write in File
	- https://github.com/megamind1230/gammal_tech/blob/main/fileTrials.cpp #still/c/file_manipulation
	- https://github.com/megamind1230/gammal_tech/blob/main/C%20Write%20in%20File%20ex7To10.c
	- 
	- ![[c-info#9]]
-   c read form file
    -   reading one word
        - ![[c-info#a]]
    -   reading all chars {one char a time} {using while}
        - ![[c-info#b]]
    -   reading all chars using op sc {all chars in a str once} {no while}
        - ![[c-info#d]]
    -   simple application { email splitting }
        - ![[c-info#e]]
    -   `\n` trick {don't **unintentional** read it }
        - read a fullname `\n` then a gender char
            - ![[c-info#f]]
    -   note
        - ![[c-info#g]]
    -   fclose(x)→x is the ptr to file
C Input & Output Files
https://github.com/megamind1230/gammal_tech/blob/main/C%20Input%20%26%20Output%20Files%20ex2.c

https://github.com/megamind1230/gammal_tech/blob/main/C%20Input%20%26%20Output%20Files%20(1)%20ex4_5.c

```c
#include <stdio.h>
int main(void) {
    FILE *In = fopen("gammal1.txt","r");
    FILE *Out= fopen("gammal2.txt","w");
    int i,n;
    fscanf(In,"%d",&n);
    for(i=1; i<=n ;i++)
    fprintf(Out,"%d\n",i);
    fclose(In);
    fclose(Out);
    return 0;
}
```
C Store Data

https://github.com/megamind1230/gammal_tech/blob/main/C%20Store%20Data%20ex2.c

```c
#include <stdio.h>
int main() {
    FILE *contacts= fopen("contacts.txt","a+");
    char ch,name[100],number[100];
    while(fscanf(contacts,"%c",&ch) != EOF)// at the vary beginning there's nothing to print on the screen.. but when writing something in contacts.. there will be
        printf("%c",ch);
    printf("Enter name: ");
    scanf("%s",name);
    printf("Enter number: ");
    scanf("%s",number);
    fprintf(contacts,"%s %s\n",name,number);
}
```
C Practice 18 (Functions 2)
https://github.com/megamind1230/gammal_tech/blob/main/C%20Practice%2018%20(Functions%202)%20ex.c
take a char array of small char .. convert it to all caps
```c
//version 1 ..void
#include <stdio.h>
void to_Upper(char arr[]){
    int i;
    for(i=0;arr[i];i++)
        if(arr[i]>='a'&&arr[i]<='z')
            arr[i]-=32;
    return;
}
int main(void) {
    char x[100];
    printf("What is your name: ");
    scanf("%s",x);
    to_Upper(x);
    printf("%s\n",x);
}
//-------------------//-------------------//-------------------
//version 2.. char*
#include <stdio.h>
char * to_Upper(char arr[]){
    int i;
    for(i=0;arr[i];i++)
        if(arr[i]>='a'&&arr[i]<='z')
            arr[i]-=32;
    return y; // same as {return &y[0];}
}
int main(void) {
    char x[100];
    printf("What is your name: ");
    scanf("%s",x);
    
    printf("%s\n",to_Upper(x));
}
```


sprintf (related to char arr {string})
doesn't work !
![[Pasted-image-20230227112205.png]]
- 3 solution
	- ![[Pasted-image-20230227112254.png]]
	- ![[c-info#h]]
	- ![[c-info#i]]

sscanf (related to char arr {string})
helps when you don't know how many digits are in the number
.. usually the number is at the very beginning of the string
```c
// www.gammal.tech
#include <stdio.h>
int main () {
    char address[]= "66 Gammal Tech street";//it's ok here not to specify the size
    int x;
    sscanf(address,"%d",&x);
    printf("%d",x);//66
}

```

C Practice 21 (sprintf sscanf)

https://github.com/megamind1230/gammal_tech/blob/main/C%20Practice%2021%20(sprintf%20sscanf)%20ex.c

a prog to refactor a string .. 1st char of the first 2 string should be `cap`
& the last/ third string should be prefixed with `https://`
```c
// www.gammal.tech
#include <stdio.h>
int main () {
    char data[]="gammal, tech, www.gammal.tech";
    char x1[20],x2[20],x3[20],new_data[100];
    sscanf(data,"%s%s%s",x1,x2,x3);//using sscanf
    //cap
    x1[0] -= 32;
    x2[0] -= 32;
    //the new string.. with the https:// thing
    sprintf(new_data,"%s %s https://%s",x1,x2,x3);
    printf("%s",new_data);
}

```

C Practice 23 (Find & Replace)

https://github.com/megamind1230/gammal_tech/blob/main/C%20Practice%2023%20(Find%20%26%20Replace)%20ex1.c
https://github.com/megamind1230/gammal_tech/blob/main/C%20Practice%2023%20(Find%20%26%20Replace)%20(1)%20ex2.c

```c
#include <stdio.h>

#include <string.h>

// #include <math.h>

// #include <stdlib.h>

// #include <cctype.h>

// #include <stdbool.h>

inline int power(int a, int b)

{

    int x = 1;

    while (b)

    {

        if (b & 1)

            x *= a;

        a *= a;

        b >>= 1;

    }

    return x;

}

void set_envi()

{

#ifndef ONLINE_JUDGE

    freopen("input.txt", "r", stdin);

    freopen("output.txt", "w", stdout);

#endif

}

  

int main()

{

    // set_envi();

    // there's a file {old} that has a repeatedly-written wrong word {khassan}.. we need to fix this

    // open new file {nu} and the {old}

    FILE *old = fopen("old.txt", "r");

    FILE *nu = fopen("nu.txt", "w");

  

    // what's the wrong one? & the correction?

    printf("What was the wrong one? & its correction ?");

    char wrong[20], right[20], the_while_word[20];

    scanf("%s", wrong);

    scanf("%s", right);

    // read all from old into nu file.. word by word

    while (fscanf(old, "%s", the_while_word) != EOF)

    {

        if (strcmp(the_while_word, wrong) == 0)

            fprintf(nu, "%s ", right); // don't forget the spaces

        else

            fprintf(nu, "%s ", the_while_word); // don't forget the spaces

    }

    // by now the test is corrected in the nu file

    // but what if we wanted the correct string back in the old file.. then we go like

  

    fclose(old);

    fclose(nu); // close them .. to swap the access mode

    // no need for FILE *old & FILE *nu .. cus they're already declared

    old = fopen("old.txt", "w"); // the w makes the old text removed

    nu = fopen("nu.txt", "r");   // cus we'll copy from it ..

  

    // now make a while that fills the old with nu .. char by char

    char temp;

    while (fscanf(nu, "%c", &temp) != EOF)

        fprintf(old, "%c", temp); // don't forget the spaces

  

    // you also can delete nu .. its job is done

    // but first freeze for a moment {prompt the user for an input word}

    fclose(nu);

    fclose(old);

    scanf("%*s");

    remove("nu.txt");

}

/*

khassan is not hassan .. you here me. the word khassan is wrong

-------------- khassan >> hassan --------------------------------------------------

hassan is not hassan .. you here me. the word hassan is wrong

*/
```

C Thread

https://github.com/megamind1230/gammal_tech/blob/main/C%20Thread%20ex1.c

https://github.com/megamind1230/gammal_tech/blob/main/C%20Thread%20(1)%20ex2.c

https://github.com/megamind1230/gammal_tech/blob/main/C%20Thread%20(2)%20ex3.c




```c
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#define rep 3
void *FirstName(void *val)
{
    char *name = (char *)val;
    printf("Your first name is '%s'\n", name);// first time printing name
    for (int i = 0; i < rep; i++) // again 3 times
    {
        printf("again your FIRST name is '%s'\n", name);
        sleep(2); // needs #include <unistd.h>
    }
    return NULL;
}

void *LastName(void *val)
{
    char *name = (char *)val;
    printf("Your last name is '%s'\n", name);
    for (int i = 0; i < rep; i++)
    {
        printf("again your LAST name is '%s'\n", name);
        sleep(2); // needs #include <unistd.h>
    }
    return NULL;
}

int main()
{
    char first_name[20], last_name[20];
    printf("First Name ?\n");
    scanf("%s", first_name);
    printf("Last Name ?\n");
    scanf("%s", last_name);
    pthread_t th;// needs #include <pthread.h>
    pthread_create(&th, NULL, FirstName, first_name);// first thread
    pthread_create(&th, NULL, LastName, last_name);// second thread
    // if not passing any arguments pthread_create(&th,NULL, fun1, NULL);
    pthread_join(th, NULL);// don't finish till the threading completion
    exit(0);// needs #include <stdlib.h>
}

/*----------------------------------------------------------------
First Name ?
has
Last Name ?
dar
Your first name is 'has'
again your FIRST name is 'has'
Your last name is 'dar'
again your LAST name is 'dar'
again your FIRST name is 'has'
again your LAST name is 'dar'
again your LAST name is 'dar'
again your FIRST name is 'has'
*/
```

DNS
هو اللي فيه ما يناظر اسم الموقع من IPs
gammal.tech ip is 67.20.103.80
there may be a reverse ip which is one that leads to another

HTML
teal is the color theme for gt
![[Pasted-image-20230302210622.png]]
![[Pasted-image-20230302210625.png|300]]

Generate index.html
a code to make an html page with a simple title & body
```c
//www.gammal.tech
#include <stdio.h>
char x1[]="<html><head><title>";
char x2[]="</title></head><body>";
char x3[]="</body></html>";
int main(){
    FILE *out=fopen("index.html","w");
    char title[10],body[400];
    printf("Enter website title: ");
    scanf("%s",title); //$
    printf("Enter the body: ");
    scanf("\n%[^\n]",body);
    //notice the \n at start is needed.. cus of line $
    fprintf(out,"%s%s%s%s%s",x1,title,x2,body,x3);// body can be an embed link
    return 0;
}

```

CSS
باعتبار إن اللي هيدخل في ال body 
هي حاجة وحيدة .. وهتكون في جدول
ودا هيخلي عملية التنظيم أسهل
{خلينا الكلام متسنتر في النص}
```c
//www.gammal.tech
#include <stdio.h>
char x1[]="<html><head><title>";
char x2[]="</title><link rel=\"stylesheet\" href=\"style.css\"/></head><body><table class=\"center\"><tr><td>";
char x3[]="</td></tr></table></body></html>";
int main(){
    FILE *out=fopen("index.html","w");
    FILE *s=fopen("style.css","w");
    char title[10],body[400],color[20];
    printf("Enter website title: ");
    scanf("%s",title);
    printf("Enter the body: ");
    scanf("\n%[^\n]",body);
    fprintf(out,"%s%s%s%s%s",x1,title,x2,body,x3);
    printf("Enter the Background color: ");
    scanf("%s",color);
    fprintf(s,"body {background-color:%s;} table.center {margin-left:auto; margin-right:auto;}",color);
    return 0;
}

```

Generate Website

```c
#include <stdio.h>
#include <stdlib.h>
char x1[]="<html><head><title>";
char x2[]="</title><link rel=\"stylesheet\"href=\"style.css\"/></head><body><table class=\"center\" width=\"90%%\"><tr><td>";
char x3[]="</td></tr><tr><td id=\"w\">";
char x4[]="<br></td></tr></table><table class=\"center\" width=\"90%%\"><tr><td>";
char x5[]="</td><td>";
char x6[]="</td></tr><tr><td>";
char x7[]="</td><td>";
char x8[]="</td></tr></table><footer><a href=\"https://www.gammal.tech/\">gammal tech</a> all reserve</footer></body></html>";
int main(){
    FILE *f=fopen("index.html","w");
    FILE *css=fopen("style.css","w");
    char title[20],header[100],img[400],color[20];
    char v1[400],v2[400],v3[400],v4[400];
    printf("Enter title: ");
    scanf("%s",title);
    printf("Enter header: ");
    scanf("\n%[^\n]",header);
    printf("Enter img: ");
    scanf("\n%[^\n]",img);
    printf("Enter video1: ");
    scanf("\n%[^\n]",v1);
    printf("Enter video2: ");
    scanf("\n%[^\n]",v2);
    printf("Enter video3: ");
    scanf("\n%[^\n]",v3);
    printf("Enter video4: ");
    scanf("\n%[^\n]",v4);
    printf("Enter color: ");
    scanf("%s",color);
    fprintf(f,"%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s",x1,title,x2,header,x3,img,x4,v1,x5,v2,x6,v3,x7,v4,x8);
    fprintf(css,"body{background-color:%s;}table.center{margin-left:auto;margin-right:auto;text-align:center;}table -td#w{background-color:white;color:black;}footer{text-align:center;}img{width:100%%;height:auto;}iframe{width:100%%;}footer{color:white;}a{color:white;}",color);
    return 0;
}

```
which in html is
```html
<html>

  

<head>

    <title>hello</title>

    <link rel="stylesheet" href="style.css" />

</head>

  

<body>

    <table class="center" width="90%%">

        <tr>

            <td>hi</td>

        </tr>

        <tr>

            <td id="w">photo<br></td>

        </tr>

    </table>

    <table class="center" width="90%%">

        <tr>

            <td>v1</td>

            <td>v2</td>

        </tr>

        <tr>

            <td>v3</td>

            <td>v4</td>

        </tr>

    </table>

    <footer>

        <a href="https://www.gammal.tech/">gammal tech</a> all reserve

    </footer>

</body>

  

</html>
```

and css is
```css
body {

    background-color: teal;

}

  

table.center {

    margin-left: auto;

    margin-right: auto;

    text-align: center;

}

  

table -td#w {

    background-color: white;

    color: black;

}

  

footer {

    text-align: center;

}

  

img {

    width: 100%;

    height: auto;

}

  

iframe {

    width: 100%;

}

  

footer {

    color: white;

}

  

a {

    color: white;

}
```
this search bar
![[Pasted-image-20230303124226.png]]
uses the ascii format by default


Publish the Website
can use godaddy.com

- IP Address
	- بعض المواقع بتسستم على إنها تقدر تفتح بس عن طريق ال ip addr بتاعها
	- ولكن by default مبتكنش متفعلة الخاصية دي في المواقع الجديدة
- 93# business model
- 94# Client-Server System Architecture
	-  ... 
- 95# ==Installing Flutter on Windows==
	- so long vid
- 96# Create Mobile App
	- how to make the app launch icon + how to make the apk file
- 97# Key Information
- 98# GUI with GTK - Intro
	- sdl > c /c++ games
	- qt > not c but c++  and more  .. almost everything 
	- gtk > c/ c++ and more .. cross platform code .. widgets
	- ==still from here==
- 99# GUI with GTK - Project Design
- 100# GUI with GTK - Project Coding
- 101# GUI with GTK - Project Building
- 102# GTK CV Project (HTML)
- 103# GTK CV Project (CSS)
- 104# GTK CV Project (Design)
- 105# GTK CV Project (Coding 1)
- 106# GTK CV Project (Coding 2)
- 107





---
# i
```c
char x[100];

    sprintf(x, "whatever");
    //sprintf(x, "something"); // this would overwrite the above

    printf("%s", x);
```
# h
```c
#include <string.h>
int main()
{
    // set_envi();
    char x[100];
    x[0] = 0;// same as {x[0] = '\0';}
    strcat(x, "whatever");
    printf("%s", x);
}
```
# g
```c
 scanf("%[^\n]%*c%c", FullName, &genderChar);
%*c	ignores an unknown char
but when knowing the char for sure and want to ignore it.. put it like

 scanf("%[^\n]\n%c", FullName, &genderChar); 
  scanf("%[^\n]Z%c", FullName, &genderChar);
```
# f
```c
#include <stdio.h>
int main()
{
    char FullName[100];
    scanf("%[^\n]s", FullName);

    scanf("%*c");

    char genderChar;
    scanf("%c", &genderChar);

    /*
    also all 3 scanf can be like
    scanf("%[^\n]%*c%c", FullName, &genderChar);
    */
    printf("%s & %c", FullName, genderChar);
}
```
# e
```c
//splitting email parts { username , canceling @ , domain }

#include <stdio.h>
int main()
{
    char username[100], domain[100];

// reading
    printf("Email with the format username@domain.com : \n");
    scanf("%[^@]s", username);

    //canceling a letter {@}
    scanf("%*c");
    //

    scanf("%[^\n]s", domain);
    //these 3 scanf can be like
    /*
    scanf("%[^@]%*c%[^\n]", username, domain);//better not to use s here
    
    */

// printing

    printf("your username is :%s\n", username);
    printf("your domain is :%s\n", domain);

}
```
# d
```c
//reading.. there should be a file previously

#include <stdio.h>
int main()
{
    FILE * MyFile = fopen("Darwish.txt", "r"); //having the text{hassan darwish}
    char Gulp[200];
    fscanf(MyFile, "%[^EOF]", Gulp);// only one gulping fscanf
    /*same as    
    fscanf(MyFile, "%[^EOF]s", Gulp);// only one gulping fscanf
    */
    printf("%s",Gulp);

}
//out
//	hassan darwish
```
# c
```c
 //optimized scanning.. read until

#include <stdio.h>
int main()
{

    char x[200]; //string
    scanf("%[^#]", x); /*same as

    scanf("%[^#]s", &x);
    }
     where s stands for string*/
    //read whatever .. until {^} reaching the \n {can be any other thing }

    printf("%s",x);
}


/*
tc
in
	flslfkslf fkjf
	dlsj#lkfjs

out
	flslfkslf fkjf
    dlsj
*/
```
# b
```c
//reading.. there should be a file previously

#include <stdio.h>
int main()
{
    FILE * MyFile = fopen("Darwish.txt", "r"); //having the text{hassan darwish}
    char JustAChar;
    while( fscanf(MyFile, "%c", &JustAChar) !=EOF ) //without !=EOF it goes nuts
        printf("%c",JustAChar);
        //prints every char inside MyFile

}
```
# a
```c
//reading.. there should be a file previously
#include <stdio.h>
int main()
{
    FILE * MyFile = fopen("Darwish.txt", "r");
    char firstName[50];
    fscanf(MyFile , "%s",firstName);
    // 1st argument must be the ptr to the file
    printf("%s\n",firstName);
    // { fscanf & fprintf } are specified for file management
}
/*
if Darwish.txt has >>hassan darwish
then output >>hassan
*/
```
# 9
```c
#include <stdio.h>
int main()
{
    FILE * MyFileToWrite= fopen("Write Something.txt","w");
    fprintf(MyFileToWrite, "something yooo\n");//\n is translated 
    //done
    
}
```
# 8
```c
//switch ranges { inclusively }
#include <stdio.h>
int main()
{
    int x;
    scanf("%d",&x);
    switch(x)
    {
    case 100 ... 999: printf("yes %d\n", x); break;
    default: printf("No\n");

    }
main();
}
/*
tc
in
    100
out
    yes 100

in
    999
out
    yes 999
in
    160
out
    yes 160
in
    20
out
    no
*/
```
# 7
```c

#include <stdio.h>
int main()
{
    int x = 1500, counter = 1;
    while(x/=10)
        counter++;
    printf("%d",counter);

}
```
# 6
```c
#include <stdio.h>
int main()
{
    int x = 4; //read int .. print int & hex
    scanf("%d", &x);
    printf("%d\n", x);
    printf("%x\n", x);
    
    scanf("%x", &x);//reading lowercase hex
    printf("%x\n", x);
    printf("%d\n", x);
    printf("\n");
    
    scanf("%X", &x);//reading uppercase hex
    printf("%x\n", x);
    printf("%d\n", x);
}
/*
in
31
out
1f
31

in
1f
out
1f
31

in
10
out
10
16
*/
```
# 5
```c
#include <stdio.h>
int main()
{
    int x = 31; 
    printf("%d\n", x);
    printf("%x\n", x);
    printf("%X\n", x);
}
/*
31
1f
1F
*/ 
```

# 4
```c

#include<iostream>

using namespace std;

int main()
{
   int x = 3;
   scanf("%d", &x);
   printf("%d\n", x);
   printf("%o\n", x);
   
   printf("\n");
   scanf("%o", &x);
   printf("%d\n", x);
   printf("%o\n", x);
}
/*
in
8
out
8
10

in
10
out
8
10
*/
```

# 3
```c
//oct to dec
#include <stdio.h>

int main()
{
    int oct, dec=0, y=1;

    printf("Enter octal \n");
    scanf("%d", &oct);

    while(oct)
    {
        dec+=oct%10*y;
        oct/=10;
        y*=8;
    }
    printf("%d\n", dec);
}
/*
in
17
out
15
*/
```
# 2
```c
#include <stdio.h>
//dec to oct... depending on the modulus method
int main()
{
    int dec;
    printf("Enter a decimal number < 37449\n");
    scanf("%d", &dec);
    if(dec == 0)
    {
        printf("oct = 0 0 0 0 0 0 \n"); // just print all of them 0's
        return 0;
    }

    int oct_digits[7];// 6 + null terminator
    int modulus ;
    int i = 0; // the while counter
    while(dec!=0)
    {
        modulus =  dec % 8;
        oct_digits[i++] = modulus;
        dec /=8;
        /*
        just for testing
        oct_digits[i] = modulus;   dec /=8;
        printf("%d ", oct_digits[i]);
        i++;
        */
    }

    //last index is now i - 1 .. don't forget the effect of the last i++
    printf("oct = ");

    //print the leading left-sided zeros if any 1st.. depending on i value
    for(int j = 6 - 1 ; j>= i ; j--) // 6 - 1 is the index of the last active digit in the array
    {
        printf("0 ");
    }
    //print reversely
    for(int j = i-1 ; j>=0 ; j--)
    {
        printf("%d ", oct_digits[j]);
    }
  printf("\n");
}

/*
Enter a decimal number < 37449
15
oct = 0 0 0 0 1 7 

Enter a decimal number < 37449
37449
oct = 1 1 1 1 1 1

Enter a decimal number < 37449
0
oct = 0 0 0 0 0 0
*/

```
# 1

```c

#include <stdio.h>
//dec to bin... depending on the modulus method
int main()
{
    int dec;
    printf("Enter a decimal number < 1023\n");
    scanf("%d", &dec);
    if(dec == 0)
    {
        printf("bin = 0 0 0 0 0 0 0 0 0 0\n"); // just print all of them 0's
        return 0;
    }

    int bin_digits[11];// 10 + null terminator
    int modulus ;
    int i = 0; // the while counter
    while(dec!=0)
    {
        modulus =  dec % 2;
        bin_digits[i++] = modulus;
        dec /=2;
        /*
        just for testing
        bin_digits[i] = modulus;   dec /=2;
        printf("%d ", bin_digits[i]);
        i++;
        */
    }

    //last index is now i - 1 .. don't forget the effect of the last i++
    printf("bin = ");

    //print the leading left-sided zeros if any 1st.. depending on i value
    for(int j = 10 - 1 ; j>= i ; j--) // 10 - 1 is the index of the last active digit in the array
    {
        printf("0 ");
    }
    //print reversely
    for(int j = i-1 ; j>=0 ; j--)
    {
        printf("%d ", bin_digits[j]);
    }
}

```
