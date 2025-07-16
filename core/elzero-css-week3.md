#1
week 3 most important

# 27
float and clear
https://www.youtube.com/watch?v=ZAb-oI23Oc4&list=PLDoPjvoNmBAzjsz06gkzlSrlev53MGIKe&index=27

```
overflow: hidden;// in parent helps ignore the problems of 
float:left // in childs
```

>to separate the floating children from the content below them
>use a `p` tag or whatever with a `clear` attribute (to reset the layout from being float) set to it like

```
<p class="clear"></p> // is put at the end of the container that includes the floating children

.clear{
clear:both;
}
```

# 28
css calculations and ` calc ` func

```txt
content width is : 100%
4 items need 5 spaces of margin each is %1 => 5% from content width is for spaces of margin
so rest space for content => 100% - 5% = 95%
so each item width of the 4 would be: {{95% / 4}}
we can put it in calc func
also this is valid {{ 95% - 10px }}
```

`width: calc(95% - 10px);`

# 29
` opacity ` is for the whole item
meanwhile `alpha channel` is for its text color or its bg color

>use case > modals (pop-ups)

# 30
position

`margin-top/bottom:` moves the whole workflow with you when having many items below each other
>meanwhile position > makes it move often freely
```
position: static / relative / absolute/ fixed / sticky;

// static > default

// absolute > relative to its parent or container {{parent or container} must have (position:relative) to make this work}

// relative > relative to its old place

// fixed > use case .. the {go to page top} button

// sticky > static till some point ..then goes fixed .. like nav bar
``` 
better combine it with `top / bottom / left / right:` attribute right below
# 31
` z-index ` > for layers
html order of mention counts when `z-index` is same for 2 items
helps with pop-ups
# 32
lists styling
` list-style-type: disc / circle/square/none/upper-roman... etc;`
` list-style-position: inside / outside; ` // is bullets considered when styling
` list-style-image: url(whateverImage);` // image instead of bullets

>the short hand would be
>`list-style: type pos image;`
# 33
[Learn CSS In Arabic 2021 - #33 - Table Styling - YouTube](https://www.youtube.com/watch?v=WgUbPZBh5cI&list=PLDoPjvoNmBAzjsz06gkzlSrlev53MGIKe&index=33)
table styling
`border-spacing` // for whole table + cells also

- `border-collapse: collapse;` to remove the double border that sometimes show in the table
- `vertical-align: bottom;`
	- ![[Pasted-image-20240317161232.png]]
- striped tables
	- ![[Pasted-image-20240317161338.png]]