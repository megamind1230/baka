#1
[CSS Diner game for css selectors](https://www.youtube.com/watch?v=w5vJPTkk5MM)
# general
## 78
>Learn CSS In Arabic 2021 - #78 - CSS Selectors Reference Part 1
 
>vscode built-in `hover tooltip` helps a lot here

```css
* >> all 
	* (wildcard/universal selector)

div >> any {div} 
	(type selector)

div p >> any {p} inside any {div} 
	(descendant)

.class-name >> {{any element}} with "class-name" 
	div.class-name >> {div} with "class-name"
	(class)

#id-name >> any element with id="class-name" 
	(id)

.one.two >> same item have with the 2 classes
	(combine)

.one .two >> "two" {somewhere inside} item with class "one"
	(again descendant)

.one > .two >> "two" {direct child} of item with class "one"
	(direct child)

.one,
.two >> a group of selectors having some css in common
	(comma grouping selector)


```
## 79
>Learn CSS In Arabic 2021 - #79 - CSS Selectors Reference Part 2

```css

div + p >> (p) must be {an adjacent sibling}={the first next sibling} of (div)
	(adjacent sibling)

p ~ div >> any sibling (div) after a (p).. next not necessary
	(general siblings)


(attribute selector)
	[attri] >> any element 
	with this attribute {whatever the value}
	
	div[attri] >> any {div} with this {attri}
	
	[attri="val"] >> the attri value 
	is (val) {for sure}
		input[type="checkbox"]
	
	[attri~="val"] >> the attri 
	approx contains (val) as a {word}
	
	[attri*="val"] >> the attri 
	contains (val) 
	at any place{{cuz it is a wildcard}} 
	as a {sub-string}


	[attri|="val"] >> 
	will match only "val" and "val-something"
		but not "something-val-something_else", "val_something"
	
	[attri^="val"] >> the attri 
	starts with (val)
		(prefix)
	
	[attri$="val"] >> the attri 
	ends with (val)
		(suffix)

```
# pseudo selectors
## 80
> Learn CSS In Arabic 2021 - #80 - CSS Selectors Reference Part 3

```css
div:first-child
	div:last-child

div:first-of-type
	div:last-of-type

div:only-child

div:only-of-type
```

## 81
> Learn CSS In Arabic 2021 - #81 - CSS Selectors Reference Part 4
```css
div:not(whatever_selector)
	eg:  div:not(:last-child)
	:not(.big, .medium) 
		selects all elements 
		that do not have 
		class="big"
		and do not have 
		class="medium"

div:nth-child(n)
	div:nth-last-child(n)
	allows `even / odd` instead of {n}

div:nth-of-type(n)
	div:nth-last-of-type(n)
	allows `even / odd` instead of {n}
```
### nth with formula
> `span:nth-of-type(6n+2)` 
> selects `every 6th` instance of a `<span>`
> starting from (and including) the `2nd` instance
## 82
> Learn CSS In Arabic 2021 - #82 - CSS Selectors Reference Part 5

```css
:root

:checked
	input[type="checkbox"]:checked + label{
	color: red;
	}
	/*now the label will be red on checking */

div:empty

:disabled
	input:disabled

:required
	input:required + span:before{
	content: "*";
	color: red;
	}
	/*now there will be a red star after {required fields}*/

:focus
	input:focus{
	border: 2px solid red;
	}
```

```css
/*same with pseudo-elements*/
::selection
	div::selection{
	background-color: teal;
	color: black;
	}
```