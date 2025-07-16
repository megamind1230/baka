
#1
# 65
> Learn CSS In Arabic 2021 - #65 - 2D Transform - Scale

- css `scale` vs `width`/`height`?
	- width 
		- doesn't affect the inner text of the item
		- only `+ve`
	- scale
		- does affect the inner text of the item
		- `-ve` allowed
- `transform: scaleX() / scaleY()/ or just use scale(X,Y)`
	- flip with `-ve` values
	- you can include some `transition-delay: whatever;` to see the effects

# 66
> Learn CSS In Arabic 2021 - #66 - 2D Transform - Rotate

- `transform: rotate(angle);` `angle` can be measured by
	- `45deg` most used
	- `2rad`
	- `250grad`
	- `.75turn`
	- `.267` if not specified .. it would be the `tan of angle`
	- [[css-angle-units]]
- if you want to use eg. `scale & rotate`
	- they both must by on the same `tranform` statement
	- `transform: scale(1,2) rotate(10deg);`
	- better to first use `translate` {if any}

# 67
>Learn CSS In Arabic 2021 - #67 - 2D Transform - Translate

- `transform: translate(X,Y);` it's like move
	- `X,Y` could be measured by `px` `rem` `em` `%` [[0-some-css-size-units]]
		- `-ve` allowed
- but why use `translate`, and not `position` ?
	- better performance & {avoids confusion sometimes}

# 68
> Learn CSS In Arabic 2021 - #68 - 2D Transform - Skew

`transform: skew(angleX, angleY);`
`angle` same as in rotate

# 69
>Learn CSS In Arabic 2021 - #69 - 2D Transform - Matrix

shorthand for `transform` would be with `matrix`
```
transform: 
matrix(scaleX(), skewY(), 
	   skewX(), scaleY(), 
	   translateX(), translateY());`
```

# 70
>[Learn CSS In Arabic 2021 - #70 - Transform - Origin](https://www.youtube.com/watch?v=DW0-7s_xJ90&list=PLDoPjvoNmBAzjsz06gkzlSrlev53MGIKe&index=70)

put it in parent container
- in 2D `transform-origin: x-axis y-axis z-axis ;`
	- default is (50 50 0)%
	- `z-axis` would be 0
	- `x-axis` `y-axis` can be measured by `px, em, rem, %`
		- or `keyword` like  
		  for x `left` `center` `right` = 0% 50% 100%
		  for y `bottom` `center` `top` = 0% 50% 100%
			- ![[Pasted-image-20240308232745.png]]
# {{3D}}
# 71
> [Learn CSS In Arabic 2021 - #71 - 3D Transform - Rotate](https://youtu.be/WF9LU1IIERM?si=VEquAqAVLAQ7NZLT)

- `transform: rotateX(angle)`
	- `rotateY(angle)`
	- `rotateZ(angle)`
	- transform can have all 3 side by side
	- sometimes used with `transform-origin` to make the flashcards effect (flip product)
- [`transform: rotate3d(x,y,z,angle);`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/rotate3d)
	- pretty complex and needs some linear algebra basics to be good at

# 72
> Learn CSS In Arabic 2021 - #72 - 3D Transform - Translate, Perspective, Perspective Origin

`transform: translate3d(x,y,z);`

- `perspective: 1000px` in parent container
	- `perspective-origin: x y z;`
		- allow keywords like `left/right/center/top/bottom`
# 73
> [Learn CSS In Arabic 2021 - #73 - 3D Transform - Backface Visibility And Flip Product](https://youtu.be/7G-a-PHsGyM?si=RZyoMjad1DBDY2LQ)

- `backface-visibility: hidden;`
	- imagine .. you have 2 divs: WORD,IMG
	- when each one flips .. it has a back with a mirrored text
	- but using this property.. makes {the back of the div after completely flipping} disappears
		- so using 2 divs on top of each other.. can help creating the flip product effect {flashcards}
		- sometimes `transform-style: preserve-3d;` is needed here