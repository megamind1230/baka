---
id: 01HQ087VNTH8JHWZSG81P4J1QB
---
#1
# 54
>Learn CSS In Arabic 2021 - #54 - Filters

eg: good with images 
`filter: blur()/brightness()/contrast()/invert()/grayscale() ..`
# 55
>Learn CSS In Arabic 2021 - #55 - Gradients

- `background-image: linear-gradient(to right , red, green);`
	- 2 or more colors
		- can change `alpha channel`
	- second color {green} `to right` 
		- btw: can go diagonally `to bottom right`
	- `to top` = `0deg`
	- `to right` = `90deg`
	- `to bottom` = `180deg`
	- `to left` = `270deg`

```
background-image: linear-gradient(
to right , 
red 20%, //start from 0% till 20%
green 20%,
green 40%, 
blue 40%,
blue 60%, 
yellow 60%,
yellow 80%,
cyan 80% //start from 80% till 100%
);
// 5 colors .. side by side red > green > blue > yellow > cyan

// notice that there is a double of each percentage
```
# 56
>Learn CSS In Arabic 2021 - #56 - Pointer Events And Caret Color

`<p contenteditable="true">` you can edit this paragraph 

`caret-color: red;` cursor color is red now
`pointer-events: none;` can not control/click/drag item with mouse

# 57
>Learn CSS In Arabic 2021 - #57 - Grid - Parent - Template Columns

`display:grid/inline-grid;`
`grid-template-columns: 80px 1fr 20% repeat(2,50px) auto;` > 6 columns

- [fraction vs auto](https://youtu.be/wYSAjaB3mL8?si=qAwQPMqkFAPqldYf&t=549)
	- `auto` is shy .. just takes what is enough for its content
	- `fr` is greedy
# 58
>Learn CSS In Arabic 2021 - #58 - Grid - Parent - Template Rows And Gap

`grid-template-rows: 80px 1fr 20% repeat(2,50px) auto;` > 6 rows
`gap: row-gap column-gap;`
# 59
>Learn CSS In Arabic 2021 - #59 - Grid - Parent - Justify Content And Align Content

- remember that `justify-content & align-content & align-items` work only when there is some extra space in parent
	- so better use them with `auto` not `fr` .. cuz `fr` takes remaining space whatever the case
- 
# 60
>[Learn CSS In Arabic 2021 - #60 - Grid - Parent - Complete Layout With Template Areas](https://www.youtube.com/watch?v=q6VtSllQHHo)

```html
 <body>
    <div class="page">
      <h2>Elzero</h2>
      <nav>
        <ul>
          <li>Home</li>
          <li>About</li>
          <li>Services</li>
          <li>Contact</li>
        </ul>
      </nav>
      <section>Content</section>
      <aside>Sidebar</aside>
      <footer>Footer</footer>
    </div>
  </body>
```
`grid-template-areas` for parent
`grid-areas` for child
```css
* {
  box-sizing: border-box;
  padding: 0;
  margin: 0;
}
ul {
  list-style: none;
}
ul li {
  display: inline-block;
}
.page { /*parent*/
  height: 100vh; /*more below code*/
  background-color: #eee;
  display: grid;
  /*remeber no {,}*/
  grid-template-columns: repeat(10, 1fr);
  grid-template-rows: 50px auto 50px;
  grid-template-areas:                               /*new*/
    "logo logo nav nav nav nav nav nav nav nav"/*2logo+8nav=10total*/
    /*every "" is a row*/
    "cont cont cont cont cont cont cont . side side"
    /*. means neither or none */
    "foot foot foot foot foot foot foot foot foot foot";
}
h2 { /*child*/
  grid-area: logo;                                   /*new*/
  background-color: red;
  color: white;
}
nav {
  grid-area: nav;
  background-color: blue;
  color: white;
}
section {
  grid-area: cont;
  background-color: yellow;
  color: white;
}
aside {
  grid-area: side;
  background-color: green;
  color: white;
}
footer {
  grid-area: foot;
  background-color: black;
  color: white;
}
```
[[css-viewport-units|100vh]] #still/css/viewport_units
[[elzero-css-week4#41|box-sizing]]

# 61
>Learn CSS In Arabic 2021 - #61 - Grid - Child - Grid Column And Grid Row

- works on {child}

- `grid-column: 1 / 5;` take columns 1,2,3,4 but not 5
	- same as `grid-column: span 4;`
	- a shorthand for `grid-column-start & grid-column-end`

`grid-column: 2 / span 3;` take columns 2,3,4 but not 5

- if span exceeded the limit.. it does not break the structure of the grid
	- eg .. a grid of 6 equal `columns`
	- 4th item has `grid-column: span 4;` does not break grid to be of 6+ columns
		- just goes down a row
# 62
>Learn CSS In Arabic 2021 - #62 - Grid - Child - Grid Area And Trainings

- works on {child}

>shorthand 
>`grid-area: {row-start column-start} {row-end column-end} ;`

also `grid-area: area-name;` like in `lesson 60`
# 63
advanced
>[Learn CSS In Arabic 2021 - #63 - Grid - Min, Max And Auto Fill](https://www.youtube.com/watch?v=NO4IeLSKNdw)

>strength of size units: `px`>`minmax()`>`fr`>`auto`

`minmax(mn, mx)` is a size unit..{range}.. not a property

>when number of columns OR rows is not as important as the size of each .. you can replace it with `auto-fill`

- so `grid-template-columns: repeat(auto-fill, minmax(100px,1fr));`
	- makes the grid responsive.. number of columns changes with viewport size

[[elzero-css-grid-read-about-auto-fit-and-ch]]
# 64
>[Learn CSS In Arabic 2021 - #64 - Finish The Grid Garden Game](https://cssgridgarden.com/)

- lvl4 > `grid-column-end` have be less than `grid-column-start`
	- lvl5 > both can be -ve
- lvl7 > `span` only with +ve values
- lvl18 > `order`
- lvl26 > tricky 
	- { Note that the water is set to fill only your 5th row, so you'll need to create 5 rows in total.}
- shorthand`grid-template: grid-template-rows / grid-template-columns;`
- 