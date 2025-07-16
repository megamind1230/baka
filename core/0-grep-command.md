#1
grep is just a command to find {{some regex pattern}} in a file

>general syntax `grep {regex} fileName1 fileName2 ..`

only focus on the regex part below

`rf` here is just a name of file
```c

//find all words that has f(someChar)x
grep "f.x" rf  >> {. > any one char}

// f( any number of chars in between {even 0 elements} )x
grep "f.*x" rf

// will match also {fx}
grep "fo*x" rf

// f( any number of chars in between {but not 0 elements} )x
grep "f.\+x" rf  >> 
//{\ is to escape the + char} 
//{ btw it's shell-dependant }

// those that end with {x}
grep "x$" rf   >> 
//{$ stands for end of line}

// those that start with {sp}
grep "^sp" rf  >> 
//{^ stands for start of line}

// any non-whitespace char
grep "\S*oomer" rf >> 
//{just highlights the words 
//containing oomer nothing more} {cap S}

// any whitespace char
grep "the\s\+consoomer" rf >> 
//{ the(any non zero whitespace)consoomer }

// the prev char was optional
grep "https\?" rf  >> 
//{shows both http & https }


// pretty advanced .. how to match url links correctly
grep "https\?://\S*\.[A-Za-z]\+" rf

>> //[a-z] small letters
>> //[A-Z] capital letters
>> //[A-Za-z] any letter
>> //[0-9] any number
>> //[5-9] just 5 through 9
>> //{\.} to escape the . cuz it is a magical char
>> //{\+} we need any number 
>> 	//of letters (non zero amount of them)

// now for emails
grep "\S\+@\S\+\.[A-Za-z]\+" rf

/*
-w {word}
-v {inverse match}
-i {case insensitive}
-c {dont show lines .. just show their count}
-l {dont show lines .. just show files with matches}
*/
// show "user" as its own single word
grep -w "user" /etc/passwd
//show users that (doesnt) have bash as their shell.. 
grep -v "bash$" /etc/passwd

```