#1
# 13

 grouping multiple selectors
 >if class one , two, three & tag p has some common css .. we can
 
 
 ```css
.one,
.two,
.three,
p{
common css
}
```

# 14
nesting
```
grandparent parent child grandchild {
css
}
```
# 15
width and height min max
```
min-width: ;
max-width: ;
min-height: ;
max-height: ;
```

to fit width to content .. and instead of using 
`display: inline-block`
use
```css
width: fit-content;
```

# 16
[Learn CSS In Arabic 2021 - #16 - Overflow - Overflow-X And Overflow-Y - YouTube](https://www.youtube.com/watch?v=FQLRSbVdk28)

overflow
```
overflow: visible; // default
overflow: hidden; // hide both x & y overflow
overflow: scroll; // always shows scroll slider || bar
overflow: auto; // scroll slider when needed

overflow-x > // control horizontal
overflow-y > // vertical
```

# 17
text shadow
```
>> important>> text-shadow: x-offset y-offset blur color, again_if_more
```

# 18
text alignment

direction > (use `.` to test)

vertical alignment {like when having an image with some text around in the same line .. how to align the text around ?}
``` css
direction: ltr / rtl;
text-align: right / center / left;
vertical-align: top / middle / bottom;
```

# 19
text decoration
text transformation

```
text-decoration: line-through/ underline / overline / none(used with links);

text-transform: capitalize / uppercase ...
```
>better to write text in html all lowercase then style it in css


# 20
[Learn CSS In Arabic 2021 - #20 - Text - Spacing - YouTube](https://www.youtube.com/watch?v=Hphs2vBjmQs)
text spacing 
```c
letter-spacing: ;// allows -ve
	word-spacing: ; // allows -ve

>> important >> text-indent: ; // allows -ve

line-height: ; // vertical indent (better be 1.6 / 1.7)
```
- [[0-w3schools-css#word-break vs word-wrap]]


# 21
when text overflows in x-axes
```c
overflow:hidden;  text-overflow: ellipsis/clip; 
	// option1 shows {...} as indicator
	// option2 only clips
```

# 22
inheritance
` border-color: inherit; ` > get from parent (or container)

# 23
typography font family
web safe fonts > (available in every device)
` font-family: Arial, Helvetica , sans-serif; `
sometimes no need to do the above .. you can get fonts from google for example > like when your page loads, the font is grabbed from google fonts website
better to download it into your server

# 24
https://www.youtube.com/watch?v=LDGfu6O5mI8
typography `font-size` and css units
- css units
	- `px`
	- `em` (means times)
		- fact > default font size for html webpage is 16px
		- relative to parent or container
	- `rem` (means root times)
		- relative to html whole page (not just body)
		- html webpage is 16px of font size
	- `vw` (viewport width)
		- dynamic (changes according to available with of the page)
	- `%`
		- relative to parent or container
		
## [[0-some-css-size-units]]


# some of the best font pairings
## standard
- Georgia and Verdana
- Helvetica and Garamond
## Popular Google Font Pairings
- Merriweather and Open Sans
- Ubuntu and Lora
- Abril Fatface and Poppins
- Cinzel and Fauna One
- Space Mono and Muli
- Spectral and Rubik
# 25
typography font style, font variant, font weight
` font-style: italic/ oblique/ normal;` (rare to use it, cuz html can do better with some tags)
` font-variant: small-caps; ' (rare to use)
` font-weight: bold / any_available_number_the_font_supports / normal; `

# 26
mouse cursor
` cursor: move/ pointer / grab ...; `