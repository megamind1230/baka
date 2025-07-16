#1
# HTML Tags
[[html-non-closing-tags-OR-empty-elements]] meta
charset .. defines the encoding type.. is important in old machines
![[Pasted-image-20231028184305.png]]
# HTML Heading
- normal text is larger than `<h4>`
	- and .. normal is not bold
	- heading has it's own line .. no other text on that line are shown
-  in `<p>` multi spaces and returns ignored
# HTML Paragraph
[[html-non-closing-tags-OR-empty-elements]] `<br>` line break
` &nbsp; ` for additional spaces in `<p>` .. non breaking space
[[html-non-closing-tags-OR-empty-elements]] ` <hr> ` horizontal rule separator (block element)
[[html-non-closing-tags-OR-empty-elements]] comment 
```
<!-- whatever -->
```

# HTML Text
bold
```
<b> whatever </b> 
<strong> whatever </strong> //better in search engine
```

italic > i or em .. doesn't matter

small tag > smaller text
mark tag> marker
del tag> middle line (good in discounts )
ins tag> bot line
sup tag> super script (like in power)
sub tag> sub script (like in H2O)

# HTML Hypertext
```
<a> for links .. has attributes 
target="_blank"  to open in new tab
title="whatever" shows txt when hover on link
in link 
	"mailto:whateverEmail" > to message him
	"tel:zonePhoneNumber" > to call
	


```
tags is not case sensitive

to link to html pages
```
ez just write in in href
```

# HTML Pictures
[[html-non-closing-tags-OR-empty-elements]] 
```
<img src="img.whatever" alt="someTxt" width= hight= > 
//alt when img can't be shown for anyreason
using only width or height > auto scale without violation to the original shape

```

```
inside img src
../img.whatever > go 1 step back to find that img
../../ > go back 2 times ...etc
```



# HTML index.html
block (like p) elements vs in-line (link img) elements
```
<div> >> inline -> block ..division container
<span> >> the opposite .. it's like marking a specific word inside a line
```
#still/html/inlineVSblock_elements
[HTML Block and Inline Elements](https://www.w3schools.com/html/html_blocks.asp)

# HTML Head
we can have multiple meta 
every single one has (name & content)
```
name="keywords" content="u Type Them Here, like this , and this, spaces allowed"
name="desription" content="League of Legends tutorials for Newbie Arabs (shows in google)(some words are ignored like the best website in the universe)" 
name="author" content="your boy SussyBaka"
```
# HTML Table

```
<table border = "1" bordercolor = "teal_or_whatever" bgcolor = "whatever" width = "100% or whatever no." height = "whatever">// to show lines of table


	<thead>//when seen .. we don't count it's content as rows .. directly go to tbody
		<tr>//table row
			<th> something here </th> // makes it a bit more bold
			<th> something here </th>
		</tr>
	</thead>


	<tbody>
		<tr> 
			<td> something here </td> // table data cell .. while <th> is a heading
			<td> something here </td>
		</tr>
	</tbody>

<tfoot>
// like here u can type the sum of degrees
</tfoot>

</table>

every cell is block .. so using <p> inside doesn't show much difference
```

# HTML Merge
```
in table tag
cellpadding ="WHATEVERpx" 
cellspacing = "WHATEVERpx" > in between cells .. when 0 it shows a grid 
align= "right / left / center"
```

```
in th tag
colspan = "2" > makes the 1 cell takes the space of 2 cells
rowspan also .. sometimes u may need to disable thead & tbody doing this && incr the no. by 1

```
# HTML Caption
u can change any cell's color > bgcolor
```
under table tag
u can add <caption> to show the purpose of the table || what's the table about
```
table nesting allowed
u can't nest block element into inline element

# HTML List

```
<ol type ="1/a/A/i/I" start="no. to count from"> 
//ordered list .. shows nums
<ul type = "square / circle / disc/ none"> 
//Unordered list .. bullets
<li> 
//list item


<dl> // description list
	<dt> abbr // description term
		<dd> the meaning // description details/data


<ol type="a" start="3" > //counts from c
<li value="4" > // this item is 4...next is 5

<ol reversed>
```
# HTML Video
[[html-non-closing-tags-OR-empty-elements]] source
```
<video 
width="whatever" 
height ="whatever" 
controls > //controls shows vid buttons .. can be autoplay instead
	<source src="nameofvid.mp4"  type = "video/mp4">
	
	this statement is shown if all sources failed
	// u can have more source tags .. 
	//just if u uploaded the videos with different extensions


the autoplay attribute is canceled in chrome (not to bother users) ..still u can type {muted} as a workaround

loop attribute

preload ="auto / none" .. 
	auto > load page then vid
	none > load vid first .. causes lag in page sometimes


poster ="photo.whatever" > thumbnail for vid

{align} doesn't work directly with {video} tag .. so enclose {video} in {dev}
```

best extensions for web mp4 ogg webm


# HTML Audio

```
it's a div but for audio
<audio controls> // same as video tag
	<source src="whatever.mp3" type = "audio/mp3"> //this type here
	// is called the MIME type that corresponds to the extension
```

# iframe
``` html
how to embed (vid / website ) into yours
<iframe
scr = "htts://youtube.com/embed/UR_YT_ID_CODE?autoplay=1&mute=1&controls=0" 
// notice & up there
width ="how many px"
title ="good for screen readers"
style="boder:none;"
>
<iframe>

some sites cancels embedding / iframe .. so it's better to use API
```

```html
<h2>Iframe - Target for a Link</h2>

<iframe src="demo_iframe.htm" name="iframe_a" height="300px" width="100%" title="Iframe Example"></iframe>

<p><a href="https://www.w3schools.com" target="iframe_a">W3Schools.com</a></p>

<!- 
when the link is clicked.. the target iframe will display the page 
-->
<p>When the target attribute of a link matches the name of an iframe, the link will open in the iframe.</p>
```
[showcase](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_iframe_target)
# HTML Semantics
semantic elements in html
- div is non semantic
	- so we use the semantic tags .. same as div .. but intuitive
		- ![[Pasted-image-20231030105214.png|150]]

# HTML Form
- form famous elements
```
<input>
<label>
<select>
<textarea>
<button>
<fieldset>
<legend>
<datalist>
<output>
<option>
<optgroup>
```


```
<form 
action="some file spcified by the backend dev" method="get/post" 
autocomplete="on"
>
	<label>Enter username</label>
	<input name ="username"> <br>
	
	<label>Enter pw</label>
	<input name="pw"> <br>
	// key=value
	// pw={whatever comes into input}
	// will show in URL {query string} 
	// (unless we use post)

	<input type ="submit" value="login or whatever"> <br>
</form>
```
elzero how to see the query string in browser chrome https://youtu.be/Anfn7RzoDHw?si=tkzHuPt-J1Zitvqq&t=219
#still/elzero
## get method vs post method

- Notes on `GET`:
	- Appends the form data to the `URL`, in name/value pairs
	- NEVER use `GET` to send sensitive data! (the submitted form data is visible in the `URL`!)
	- The length of a `URL` is limited (2048 characters)
	- Useful for form submissions where a user wants to bookmark the result
	- `GET` is good for non-secure data, like query strings in Google
- Notes on `POST`:
	- Appends the form data inside the body of the `HTTP request` (the submitted form data is not shown in the `URL`)
	- `POST` has no size limitations, and can be used to send large amounts of data.
	- Form submissions with `POST` cannot be bookmarked


# HTML Gammal=426625
```
<input 
placeholder="enterNumber here" 
type="number / text / password / submit / color / tel / email / search / date / datetime-local / time / month / week / reset / range"> 
// shows pale in input box .. & accepts only numbers ... etc

if placeholder is not shown .. maybe use {label} tag
html5 .. accepts email without .com 
```
- Gammal=426625
	- ![[Pasted-image-20231031092854.png]]


# HTML disabled Attribute

> disabled Attribute won't send to backend
## datalist-option {search between items}
```
//in form
// input tag {needed} here
<input 
name="courseName" 
placeholder="choose course" 
list ="Courses"
> 

<datalist 
id="Courses"
> // {id} must be same as in {list}

	<option value="C">C</option>
	<option value="Cpp">Cpp</option>
	<option value="DS">DS</option>
	<option value="Algo">Algo</option>

</datalist > 
// you can type any other not-mentioned option 
```


## select-option {drop down list}
```
//in form
//input tag {not needed} ..just select

<label for="courses">choose course:</label>
<select 
name ="couse" 
id = "courses">

//{for} same as {id}

<optgroup label="Core Courses">
	
		<option disabled selected> 
		select your course 
		</option> 
// can't select this yourself.. or send it
		
		<option value="C">C</options>
		<option value="C++">C++</options>
// {C++} is encoded in the URL on submission
		<option value="DS">DS</options>
		<option value="Algo">Algorithms</option> 
// {Algo} is key sent .. not {Algorithms}

</optgroup>

<optgroup label = "Elective Courses">
		<option value="html">html</options>
		<option value="dart">dart</options>
</optgroup>

</select>
```


# HTML Step

```
<input type = "file" > // upload 1 file //better done in css
<input type = "file" multiple> // upload multiple 
```

```
<input type = "radio" name="memberPerson" checked> // this is selected by default
<label> he's a member bro</label>
<input type = "radio" name="memberPerson">
<label> he's not a member bro</label>
// removing or changing {name} .. makes {radio} multi select .. as if it is a {checkbox}
```

```
<input type="range" min="0" max="100" step="10"> // sliding bar || slider
<input type="image" src="whatever">

instead of min & max > use minlength & maxlength with text || strings
```

to check if the user is human or a computer .. put some hidden fields .. if filled > then a computer is filling the info 
or like if u want to pass my ip
```
type = "hidden" value="whatever" // value can be of high privacy
```

field to write down (like a message / huge text )
```
<textarea name="message or whatever" rows = "10" cols="10">
// can manually scale it in page
this message shows as default (not as placeholder)
</textarea>
```

`autofocus` > cursor active here at first

```
<input name="pw" type= "password" size = "50" maxlength="10" required> 
// size bigger in pixels .. limit is 10 char .. can't send witout pw data

// readonly > can't change field
// step , min , max > with number type

```

# HTML Gammal Tech
structure your own website now