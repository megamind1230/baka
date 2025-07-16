#1
- emmet comes built-in in vscode
> after completing the emmet hit `enter` or `tab` to auto-complete the code &

> remember that it's better sometimes to use `ctrl enter` combined sometimes with `tab` 
> ..instead of just `enter` .. not to break the structure of the output

# balance outward command in emmets
- it is just to fast select tag 
	- by going bigger selections = (outward) 
	- or smaller selections = (inward)
- i don't think i need it .. as long as i have vim text-object & visual mode selection
# most important
- `!` > core html tags
- `.` and `#`
	- `span.purple` >`<span class="purple"></span>`
		- `.purple` > `<div class="purple"></div>` 
		  cuz div is default & most used
	- `span.one.two#three` > 
	  `<span class="one two" id="three"></span>`
- `link` > `<link rel="stylesheet" href="">`
- `[]`
	- `button[type="button"]` > `<button type="button"></button>`
	- `[data-selected].active` > 
	  `<div data-selected="" class="active"></div>`
- `>` > children or nesting
	- `header>nav>ul`
- `*` > repeat
	- `li*3`
- `{}` > inner text
	- `li*3{list-item-data}`
- `$` > numbers
	- `li*3{item-number-$}`
	- can do `$$` to be {05, 03}
- `+` > siblings
	- `header+main+footer`
- `^` > de-sibling or climb-up
	- `header>nav^main+footer` 
		- `nav` is child of `header`
		- but {`main`, `footer`} are siblings of `header`
	- same effect with grouping chars `()`
		- `(header>nav)+main+footer`
- set type or method or category with `:`
	- `input:submit` > `<input type="submit"/>`

nice practice
`li*5>a>lorem1`
`table+`
	`dl+`
	`optg+`