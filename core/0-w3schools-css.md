#1
# cursor

<p>Mouse over the words to change the cursor.</p>
<span style="cursor:auto">auto</span><br>
<span style="cursor:crosshair">crosshair</span><br>
<span style="cursor:default">default</span><br>
<span style="cursor:e-resize">e-resize</span><br>
<span style="cursor:help">help</span><br>
<span style="cursor:move">move</span><br>
<span style="cursor:n-resize">n-resize</span><br>
<span style="cursor:ne-resize">ne-resize</span><br>
<span style="cursor:nw-resize">nw-resize</span><br>
<span style="cursor:pointer">pointer</span><br>
<span style="cursor:progress">progress</span><br>
<span style="cursor:s-resize">s-resize</span><br>
<span style="cursor:se-resize">se-resize</span><br>
<span style="cursor:sw-resize">sw-resize</span><br>
<span style="cursor:text">text</span><br>
<span style="cursor:w-resize">w-resize</span><br>
<span style="cursor:wait">wait</span>
# visibility vs display
`visibility: hidden` > leaves item's space
`display: none` > removes item even with its space
<head>
<style>
q:lang(no) {
  quotes: "~" "~";
}
</style>
</head>
# [CSS Multiple Backgrounds](https://www.w3schools.com/css/css3_backgrounds.asp)
# box-shadow spread and inset
- `spread-radius` parameter 
	- defines the spread radius. A `+ve` value increases the size of the shadow, a `-ve` value decreases the size of the shadow.
		- eg: `box-shadow: 10px 10px 5px {12px} lightblue;`
- `outset{default} vs inset` parameter
	- eg: `box-shadow: 10px 10px 5px lightblue inset;`
	- eg: `box-shadow: 10px 10px 5px lightblue outset;`
# word-break, white-space
[4 ways to deal with overflowing text](https://www.youtube.com/watch?v=6Nv0weHy7t0)
## white-space
```c
//important
white-space: 
normal {default} 
/ nowrap 
/ pre (exactly as written in html) 
/ pre-wrap (pre but with wrap on) 
/ pre-line (pre but ignores {the spaces} before each line);
```
## word-break {the actual word wrap property}
```c
word-break: 
normal {default} no wrapping
/break-all; 
	// wrap/break {on width} 
		//{makes it harder to read some words cuz it ruins them}
/break-word; 
	// wrap/break {on specific words/parts} not to overflow width
		// better shape
```

# box-sizing #still/css/box-sizing
[CSS Box Sizing](https://www.w3schools.com/css/css3_box-sizing.asp)