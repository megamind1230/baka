#1
# to make drop caps or initial caps in css

```css
p::first-letter{ 
/*first-line is a thing also*/
font-size: whatever_biggersize;
color: diff_color;
}
```

# clear: both;
better used with `float`

# trade-offs between float and display: inline-block
if the little space `display: inline-block` creates .. make u angry and not use the whole width of the webpage > use `float` instead 

# position: absolute / relative / fixed / sticky
`absolute` > relative to browser (default) or container (if configured so)
`relative` > relative to old place
#still/css 
`fixed` > if scrolling .. it doesn't disappear from screen
`sticky` > waits till you reach it then goes fixed (almost)

# z-index
is to show some lower layer in front of others
the higher the z-index value is, the higher the layer would be
`z-index= whatever_number`


# best practices in web design
-  n chunks of 4 items (memory psychology)
-  3 clicks is max to reach your desired page
- principles in design
	- repetition > reuse colors
	- contrast > make it readably
	- proximity > what is related is make into a group
	- alignment > make visual units and (semantics)
- principles in accessibility
	- POUR > perceivable , operable , understandable , robust
- why accessibility: for
	-  the blind
	-  the physically-disabled
	-  those with slow internet
	-  those with old pc
	- those using your website from a mobile
-  [[color-theory]] #still/css 
	- color scheme
	- monochromatic
	- analogous
	- complementary
	- split complementary
	- triadic
	- tetradic
- 60kB recommended for graphics files
- aliased text > with jaggies