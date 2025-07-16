#1
# pseudo-classes
used to define a special state of an element.
## 34
`pseudo-classes` use only one `:`
`p:hover`
`a:visited`
`:checked`

```css
.ch:checked + label {
color: red;
}
/*
means make class ch that has a checkbox  .. when checked >> make it's label of color red
*/
```

`:empty`
`:focus` > good with input tags .. `outline:none;`
[[elzero-css-week8#pseudo selectors|more]]
# pseudo-elements
## 35
`pseudo-elements` use double `::`

>`::first-line` & `::first-letter`  can only be applied to block-level elements such as p & div .. 


>the styles specified by ::first-letter override those applied by ::first-line.

`::first-line` according to viewport
`::selection` mouse drag selection
## 36
`pseudo-elements`: before, after, content

- `::before` & `::after` .. to make them work >> at least `content: "";` must be included in them	 
	- `content: url('img');` allows

`::after` how to make a pipeline after some text

`::before` [some alignment math tricks](https://youtu.be/OIWZ4EXwlnA?si=mVfdk4w1CJF24mbf&t=372)  + [how to make a simple arrow in css ](https://youtu.be/OIWZ4EXwlnA?si=Jq-CvktMvhHprvor&t=432)

## 37
`pseudo-elements`: content and trainings 

counter
```css
in parent or container
counter-increment: whateverName;

in ::after
content: counter(whateverName);

```

user-defined attribute
``` css
/*in html tag .. some user-defined attribute .. like */
<div class="one" data-text="Something"> ...

/*in ::before*/
content: attr(data-text); 
/*makes you show the word Something for this specific div*/
```
[how to make the simple arrow before the list items](https://youtu.be/4WT2eO8aM7U?si=B4Cwu5FGTjL3FhxV&t=394) `li`  .. notice that `position: relative;` for `li`

# 38
vendor prefixes .. browsers owners

```css
-webkit-border-radius: ; // safari , chrome , new Opera versions
-ms-border-radius: ; // microsoft IE , Edge
-o-border-radius: ; // old versions of Opera
-moz-border-radius: ; // for firefox
```

website to help [Can I use... Support tables for HTML5, CSS3, etc](https://caniuse.com/)

some vscode plugins may help >> just search .. prefix

`task runner` .. helps in future #still/css 
# 39
border radius
![[Pasted-image-20231218154103.png]]
`border-radius`
`outline: 2px solid red`

>`border-top-left-radius: 20px 30px;` allowed


# 40
box shadow
```
box-shadow: x-offset y-offset blur spread{not used that much unless you're decent} color inset/outset{default btw} ;
``` 

```
box-shadow: shodow-set1 , shadow-set2, shodow-set3 , shadow-set4;
```
# 41
the box model {that thing that shows in inspect tools} and box sizing
[Learn CSS In Arabic 2021 - #41 - The Box Model And Box Sizing - YouTube](https://www.youtube.com/watch?v=9PDCOviQOwo&list=PLDoPjvoNmBAzjsz06gkzlSrlev53MGIKe&index=41)

`box-sizing: content-box`  
	{default} makes width & height of box = content + padding + margin + border

`box-sizing: border-box` better use it with eg: [[elzero-css-week6#60|grid]]
	makes width & height of box are just as you define them .. the numbers you set to them are respected

[wildcard ](https://youtu.be/9PDCOviQOwo?si=2OFPmZ-xn0BACiRZ&t=379)