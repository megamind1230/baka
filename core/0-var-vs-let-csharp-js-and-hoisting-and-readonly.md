
|         | var              | let  |
| ------- | ---------------- | ---- |
| scope   | can call outside | cant |
| hoisted | yes              | no   |

> hoisting : defining the variable at the top of the scope/block

# ex

```js
//declare a variable with var keyword 
var i = 4  
    //block scope -start  
  if(i>3)  
  {  
      //declare a variable with let keyword  
      let j= 5;  
  
      //declare a variable with var keyword  
      var k = 8;  
      //it will give me 5  
      console.log("inside block scope (let)::"+ j);  
  }  
  //block scope -end  
  
//it will give me 8.  
//var variable are available outside block scope  
console.log("ouside block scope (var)::"+ k);  
  
//it will give me an error.  
//let variable are not available outside block scope  
console.log("ouside block scope (let)::"+ j); 

/*
Output
inside block scope (let)::5
ouside block scope (var)::8
Uncaught ReferenceError: j is not defined at window.onload
*/
```


```js
//program doesn't know about i variable so it will give me an error.  
console.log(i);  
//declare and initilize let variable  
let i = 25;  
```

# readonly
readonly are set at runtime