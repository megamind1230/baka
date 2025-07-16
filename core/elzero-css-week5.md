#1
# 42
>transition


>shorthand > `transition: property duration delay timing-function` {pddf}

```
transition-property: width , height , whateverAllowsAnimation / all;

transition-duration: 2s / 2000ms;

transition-delay: .2s / 2s;

transition-timing-function: ease / linear / ease-in / ease-out / ease-in-out;

```
# 43
>!important declaration


>styling priority OR strength chain in html css
> html style attribute (strongest) > html style tag > css style (weakest)

`!important` breaks `strength chain` makes some weaker ones the strongest && when you don't have access on html or js files
# 44
>[Learn CSS In Arabic 2021 - #44 - The Margin Collapse - YouTube](https://www.youtube.com/watch?v=0Zek-O9bzAo&list=PLDoPjvoNmBAzjsz06gkzlSrlev53MGIKe&index=44)

it's just a concepts
- only vertical margins collapse
- bigger margin wins
- only happens if nothing is between the two items
- nesting does not prevent collapse .. unless the parent has his own style
# 45
>css variables
- global scope
```
:root // which is the whole html page
{ 
--whateverName: red / 2s / 3px ...; // declare
}

var(--whateverName, fallback_value) // use
```

- local scope
 not inside `:root` .. but somewhere else
# 46
>Flex Box Parent - Direction, Wrap, Flow

`dislay:flex;`
`flex-direction: row / row-reverse / column / column-reverse;`

`flex-wrap: wrap / nowrap / wrap-reverse ;`

>shorthand `flex-flow: flex-direction flex-wrap;` {dw}
# 47 48 49 very related
- these 3 are done {on the parent}
	- we need extra room left inside the parent to make them take effect
>Flex Box Parent - Justify Content

horizontal (main axis)
`justify-content: flex-start/center/flex-end/space-between/space-around/space-evenl;` 

- {main axis} becomes {cross axis} with column direction

---
- [[The-how-and-why-align-items-and-align-content-in-flex-and-grid|align-items vs align-content]]
>Align Items (cross axis){more used than `align-content`}

vertical of {Justify Content} (items as a whole)
`align-items: stretch/flex-end/flex-start/center ;`

---
>Align Content {less used}

vertical
(cannot work if no wrapping)(how to space wrapped lines) 
`align-content: flex-end/flex-start/center ;`
# 50
>Flex Box Child - Grow, Shrink, Order

- `flex-grow: 3;` applied on a single item 
	- gives it the authority to grow 3 times more than every single of them {as long as there is space in parent}
		- otherwise they are all same size
		- opposite `flex-shrink:3;`
- `order: 1;` 
	- can be `-ve`
# 51
>Flex Box Child - Flex Basis, Flex Shorthand

- `flex-basis: 300px`
	- with `flex-direction: row/row-reverse;` .. it is width
	- with `flex-direction: column/column-reverse;` .. it is height
	- so respects `max-width`/`max-height`
> shorthand `flex: grow shrink basis;`
# 52
>Flex Box Child - Align Self, Games, Task
- for child not parent
`align-self: auto/flex-end/flex-start/center/stretch;`
task > do a [[holy-grail]]
# 53
Finish [Flexbox Froggy](https://flexboxfroggy.com/)
> Notice that when you set the direction to a reversed row or column, start and end are also reversed... cuz main & cross axis are reversed

> better use `justify-content` & `align-items` first then `flex-direction` > cuz it easier to imagine imo


[[codepip-games|more games]]