# 50 سؤالاً في أساسيات جافا سكريبت مع الإجابات

## 1. المتغيرات (Variables)

**1. ما الفرق بين `var`، `let`، و`const`؟**
```javascript
// الإجابة:
// var: نطاق الدالة (function-scoped)، يمكن إعادة التصريح
// let: نطاق الكتلة (block-scoped)، لا يمكن إعادة التصريح
// const: نطاق الكتلة، ثابت لا يمكن إعادة التعيين
```

**2. ما قيمة `x` بعد تنفيذ هذا الكود؟**
```javascript
let x = 10;
x = 20;
console.log(x);
```
**الإجابة:** 20

**3. ما نتيجة هذا الكود؟**
```javascript
const y = 5;
y = 10;
console.log(y);
```
**الإجابة:** خطأ (TypeError) لأن `const` لا يمكن إعادة تعيينه

**4. كيف تعلن متغيراً باسم `name` وتعين له القيمة "أحمد"؟**
```javascript
// الإجابة:
let name = "أحمد";
```

**5. ما نتيجة هذا الكود؟**
```javascript
var a = 5;
{
    var a = 10;
}
console.log(a);
```
**الإجابة:** 10 (لأن `var` له نطاق الدالة)

**6. ما نتيجة هذا الكود؟**
```javascript
let b = 5;
{
    let b = 10;
}
console.log(b);
```
**الإجابة:** 5 (لأن `let` له نطاق الكتلة)

## 2. الدوال (Functions)

**7. كيف تنشئ دالة تقبل رقمين وتعيد مجموعهما؟**
```javascript
// الإجابة:
function sum(a, b) {
    return a + b;
}
```

**8. ما نتيجة هذا الكود؟**
```javascript
function greet(name) {
    return "مرحباً " + name;
}
console.log(greet("سارة"));
```
**الإجابة:** "مرحباً سارة"

**9. كيف تكتب نفس الدالة السابقة باستخدام Arrow Function؟**
```javascript
// الإجابة:
const greet = (name) => "مرحباً " + name;
```

**10. ما نتيجة هذا الكود؟**
```javascript
function multiply(x, y = 2) {
    return x * y;
}
console.log(multiply(5));
console.log(multiply(5, 3));
```
**الإجابة:** 10 ثم 15

**11. ما الفرق بين `function` و Arrow Function؟**
```javascript
// الإجابة:
// 1. Arrow functions ليس لها this خاص بها
// 2. Arrow functions ليس لها arguments object
// 3. Arrow functions لا يمكن استخدامها كconstructors
```

**12. ما نتيجة هذا الكود؟**
```javascript
const square = function(num) {
    return num * num;
};
console.log(square(4));
```
**الإجابة:** 16

## 3. الشروط (Conditionals)

**13. كيف تكتب جملة شرطية للتحقق إذا كان العمر أكبر من أو يساوي 18؟**
```javascript
// الإجابة:
let age = 20;
if (age >= 18) {
    console.log("بالغ");
}
```

**14. ما نتيجة هذا الكود؟**
```javascript
let temp = 25;
if (temp > 30) {
    console.log("حار");
} else if (temp > 20) {
    console.log("معتدل");
} else {
    console.log("بارد");
}
```
**الإجابة:** "معتدل"

**15. كيف تكتب نفس الشرط السابق باستخدام Ternary Operator؟**
```javascript
// الإجابة:
let temp = 25;
let weather = temp > 30 ? "حار" : temp > 20 ? "معتدل" : "بارد";
console.log(weather);
```

**16. ما نتيجة هذا الكود؟**
```javascript
let score = 85;
let grade = score >= 90 ? "ممتاز" :
            score >= 80 ? "جيد جداً" :
            score >= 70 ? "جيد" : "مقبول";
console.log(grade);
```
**الإجابة:** "جيد جداً"

**17. ما نتيجة هذا الكود؟**
```javascript
let x = 0;
if (x) {
    console.log("صحيح");
} else {
    console.log("خطأ");
}
```
**الإجابة:** "خطأ" (لأن 0 يعتبر false)

**18. ما نتيجة هذا الكود؟**
```javascript
let name = "";
if (!name) {
    console.log("الاسم فارغ");
} else {
    console.log("الاسم: " + name);
}
```
**الإجابة:** "الاسم فارغ"

## 4. المنطق (Logic)

**19. ما نتيجة هذا الكود؟**
```javascript
console.log(true && true);
console.log(true && false);
console.log(false && true);
console.log(false && false);
```
**الإجابة:** true, false, false, false

**20. ما نتيجة هذا الكود؟**
```javascript
console.log(true || true);
console.log(true || false);
console.log(false || true);
console.log(false || false);
```
**الإجابة:** true, true, true, false

**21. ما نتيجة هذا الكود؟**
```javascript
console.log(!true);
console.log(!false);
console.log(!!10);
console.log(!!0);
```
**الإجابة:** false, true, true, false

**22. ما نتيجة هذا الكود؟**
```javascript
let a = 5;
let b = 10;
console.log(a > 3 && b < 15);
console.log(a > 10 || b > 5);
```
**الإجابة:** true, true

**23. ما نتيجة هذا الكود؟**
```javascript
let x = null;
let y = x || 100;
console.log(y);
```
**الإجابة:** 100

**24. ما نتيجة هذا الكود؟**
```javascript
let x = 0;
let y = x || 100;
let z = x ?? 100;
console.log(y, z);
```
**الإجابة:** 100, 0 (لأن ?? تتحقق فقط من null و undefined)

## 5. الرياضيات (Math)

**25. كيف تحصل على القيمة المطلقة لـ -5؟**
```javascript
// الإجابة:
console.log(Math.abs(-5)); // 5
```

**26. كيف تقرب 3.7 إلى أقرب عدد صحيح؟**
```javascript
// الإجابة:
console.log(Math.round(3.7)); // 4
```

**27. ما نتيجة هذا الكود؟**
```javascript
console.log(Math.floor(3.7));
console.log(Math.ceil(3.2));
console.log(Math.trunc(3.7));
```
**الإجابة:** 3, 4, 3

**28. كيف تحصل على الجذر التربيعي لـ 16؟**
```javascript
// الإجابة:
console.log(Math.sqrt(16)); // 4
```

**29. ما نتيجة هذا الكود؟**
```javascript
console.log(Math.pow(2, 3));
console.log(Math.max(5, 10, 3));
console.log(Math.min(5, 10, 3));
```
**الإجابة:** 8, 10, 3

**30. كيف تولد عدد عشوائي بين 1 و 10؟**
```javascript
// الإجابة:
let randomNum = Math.floor(Math.random() * 10) + 1;
```

## 6. الحلقات (Loops)

**31. كيف تكتب حلقة for تطبع الأرقام من 1 إلى 5؟**
```javascript
// الإجابة:
for (let i = 1; i <= 5; i++) {
    console.log(i);
}
```

**32. ما نتيجة هذا الكود؟**
```javascript
for (let i = 0; i < 3; i++) {
    console.log(i * 2);
}
```
**الإجابة:** 0, 2, 4

**33. كيف تكتب حلقة while تطبع الأرقام من 10 إلى 1؟**
```javascript
// الإجابة:
let i = 10;
while (i > 0) {
    console.log(i);
    i--;
}
```

**34. ما نتيجة هذا الكود؟**
```javascript
let sum = 0;
for (let i = 1; i <= 5; i++) {
    sum += i;
}
console.log(sum);
```
**الإجابة:** 15

**35. كيف تكتب حلقة for تطبع العناصر في مصفوفة؟**
```javascript
// الإجابة:
let fruits = ["تفاح", "موز", "برتقال"];
for (let i = 0; i < fruits.length; i++) {
    console.log(fruits[i]);
}
```

**36. ما نتيجة هذا الكود؟**
```javascript
for (let i = 0; i < 5; i++) {
    if (i === 3) {
        break;
    }
    console.log(i);
}
```
**الإجابة:** 0, 1, 2

## 7. أسئلة متقدمة

**37. ما نتيجة هذا الكود؟**
```javascript
let a = "5";
let b = 2;
console.log(a + b);
console.log(a - b);
```
**الإجابة:** "52", 3

**38. كيف تكتب دالة تحسب عاملي (factorial) عدد؟**
```javascript
// الإجابة:
function factorial(n) {
    if (n === 0 || n === 1) return 1;
    return n * factorial(n - 1);
}
```

**39. ما نتيجة هذا الكود؟**
```javascript
function checkNumber(num) {
    return num % 2 === 0 ? "زوجي" : "فردي";
}
console.log(checkNumber(7));
console.log(checkNumber(10));
```
**الإجابة:** "فردي", "زوجي"

**40. كيف تكتب دالة تحقق إذا كان الرقم أولياً؟**
```javascript
// الإجابة:
function isPrime(num) {
    if (num <= 1) return false;
    for (let i = 2; i <= Math.sqrt(num); i++) {
        if (num % i === 0) return false;
    }
    return true;
}
```

**41. ما نتيجة هذا الكود؟**
```javascript
let counter = 0;
for (let i = 0; i < 10; i++) {
    for (let j = 0; j < 5; j++) {
        counter++;
    }
}
console.log(counter);
```
**الإجابة:** 50

**42. كيف تكتب دالة تقلب الأرقام في مصفوفة؟**
```javascript
// الإجابة:
function reverseArray(arr) {
    let reversed = [];
    for (let i = arr.length - 1; i >= 0; i--) {
        reversed.push(arr[i]);
    }
    return reversed;
}
```

**43. ما نتيجة هذا الكود؟**
```javascript
let numbers = [1, 2, 3, 4, 5];
let result = 0;
for (let num of numbers) {
    result += num;
}
console.log(result);
```
**الإجابة:** 15

**44. كيف تكتب دالة تحول درجة الحرارة من مئوية إلى فهرنهايت؟**
```javascript
// الإجابة:
function celsiusToFahrenheit(celsius) {
    return (celsius * 9/5) + 32;
}
```

**45. ما نتيجة هذا الكود؟**
```javascript
function fibonacci(n) {
    if (n <= 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
}
console.log(fibonacci(6));
```
**الإجابة:** 8

**46. كيف تكتب دالة تحسب مساحة دائرة؟**
```javascript
// الإجابة:
function circleArea(radius) {
    return Math.PI * radius * radius;
}
```

**47. ما نتيجة هذا الكود؟**
```javascript
let x = 10;
let y = "10";
console.log(x == y);
console.log(x === y);
```
**الإجابة:** true, false

**48. كيف تكتب دالة تحسب المتوسط الحسابي لمجموعة أرقام؟**
```javascript
// الإجابة:
function average(numbers) {
    let sum = 0;
    for (let num of numbers) {
        sum += num;
    }
    return sum / numbers.length;
}
```

**49. ما نتيجة هذا الكود؟**
```javascript
function mystery(a, b) {
    while (b !== 0) {
        let temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}
console.log(mystery(48, 18));
```
**الإجابة:** 6 (هي خوارزمية إقليدس لإيجاد القاسم المشترك الأكبر)

**50. كيف تكتب دالة تحول رقم عشري إلى ثنائي؟**
```javascript
// الإجابة:
function decimalToBinary(decimal) {
    let binary = "";
    while (decimal > 0) {
        binary = (decimal % 2) + binary;
        decimal = Math.floor(decimal / 2);
    }
    return binary || "0";
}
```

---

## ملخص مفاهيم:
1. **المتغيرات**: var, let, const
2. **الدوال**: function declaration, expression, arrow functions
3. **الشروط**: if, else if, else, ternary operator
4. **المنطق**: &&, ||, !, ??
5. **الرياضيات**: Math object methods
6. **الحلقات**: for, while, do...while, break, continue