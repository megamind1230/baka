#1
linked pages for css & html elzero + (can i make multiple css files, each for an html file)
# 2
better to make folder for css
to link css file with html
```
<link ref="stylesheet" href="path of css" > // able to use more than one
```

```
selector {
property : value; // decl
propety2 : value
}
```
- selector can be
	- name of tag > triggers all tags with same name
	- .name > class
	- `#name` > id
```
naming convension
<div id="main">
        //don't <div id="1st">Starting with digit GeeksforGeeks</div> 
        <div id="_st">Starting with underscore</div>
        <div id="-st">Starting with hyphen</div>
        <div id="st">Starting with lower case alphabet</div>
        <div id="St">Starting with upper case alphabet</div>
        <div id="--1">Starting with double hyphen</div>
        <div id="s">only one alphabet</div>
        <div id="_1">underscore before digit</div>
        //don't <div id="-">only hyphen</div> 
        <div id="--">double hyphen</div>
        <div id="_">only underscore</div>
        <div id="__">double underscore</div>
    </div>
```
# 3
- internal styling > is the css in the ==html file==
	- like the `style tag` inside `head tag`  .. better not to use
	- or the `style attribute` inside any tag > inline styling .. better not to use
- external styling > that is in the ==css file==

# 5
[Learn CSS In Arabic 2021 - #05 - Background - Color, Image, Repeat - YouTube](https://www.youtube.com/watch?v=-srybsn3YDM)

```
background-color: 
```
- 3 ways to colorize
	- by name https://www.color-meanings.com/list-of-colors-names-hex-codes/
	- by rgb(r g b / 50%) // takes 0->255  // 50% alpha channel = intensity
	- by `#hex`

add image in bg
```
background-image: url("path to image")
```

- #still/css/vscode/extension/images
	- see if you can use relative path with `live server` extension


to make a pattern in bg with your image
```css
background-repeat: repeat / no-repeat / repeat-x / repeat-y;
```

# 6
[Learn CSS In Arabic 2021 - #06 - Background - Attachment, Position, Size - YouTube](https://www.youtube.com/watch?v=8sooTBY5C4w)

> `background-position: top right;`
```
background-attchment: scroll; //  default
background-attchment: fixed; // fixed somewhere when scrolling
```

- 3 ways to position
	- by name
	- by pixels
	- by %
```
background-position: left/right/center top/bottom/center;  //either with names
// center is default in second .. like
background-position: left; = background-position: left center
```

- 3 ways to size
	- same as position
```
background-size: auto (default image dimensions as it is ) / cover (fixed fill) / contain (dynamic fill , image must be all visible all the time) (best)
```

> background shorthand 
> 	`color image repeat attach position` > `background CIRAP`
> `background: teal url("img_tree.png") no-repeat fixed right top;`
# 7
`padding` .. doesn't allow -ve
>pixels in css is not the one in YOUR screen

- padding is done clockwise 
	- by pixels
	- by %
```
TRBL
Top Right Bottom Left
if value is not mentioned in one of them .. it is taken from the corresponding opposite
```

`border-radius: 5px;` > rounded border
# 8
[Learn CSS In Arabic 2021 - #08 - Margin - YouTube](https://www.youtube.com/watch?v=LEJkJ0AiKDw)
`margin` .. allows -ve
>the order from outside is like :outline (doesn't affect size) > margin (outer) > border > padding (inner) > whatever_content

- margin
	- same as size
```
div{
width: whatever%
margin: auto; //(better .. browser does the job)
}
```

# 9
## {outline} is the line outside the {border}
padding , margin , `border` > are shorthand properties.. can expand into 4 directions TRBL .. like > padding-left ..unlike `outline`

>border must have (better in this order) > width , style (solid, dotted, dashed) , color {WSC} > to show

- the outline is NOT a part of the element's dimensions; the element's total width and height is not affected by the width of the outline.
- The `outline-offset: 10px` adds space between an outline and the edge/border of an element. The space between an element and its outline is transparent.

> shorthand `outline: width style color;`
> `outline: thin solid teal` > `thin can be in pixels also`


# 10
[Learn CSS In Arabic 2021 - #10 - Outline - YouTube](https://www.youtube.com/watch?v=NyOaxP-Adac)

outline doesn't affect the size of the tag or element
same as border > but not in 4 directions

don't use outline > just use border

# 11
[Learn CSS In Arabic 2021 - #11 - Display - Block, Inline Block, Inline - YouTube](https://www.youtube.com/watch?v=-qbGxua98To)

- types of display
```txt
block
  - Take Full Width (If not mentioned)
  - Add Line Break
  - Respect (Padding, Margin, Width, Height) around neighbors

  inline
  - No Repsepct Width, Height , 
	({margin , padding} unless they are left or right 
	.. which is horizontal) around neighbors
  - Do Not Add Line Break

  inline-Block
  - Allow Elements Before And After It in The Same Line
  - Respect (Padding, Margin, Width, Height) around neighbors
```

# 12
[Learn CSS In Arabic 2021 - #12 - Element Visibility And Use Cases - YouTube](https://www.youtube.com/watch?v=g2URo6kLtgg)

