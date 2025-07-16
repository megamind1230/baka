#1
# exercise
- `text-align: center;`
- strikeout = line through = `<del>`
- quote types
	- `<q>` inline
	- `<blockquote>`
		- use `cite` attr to link the reference
- <bdo dir="rtl">This text will be written from right to left</bdo>
- <p>The <abbr title="World Health Organization">WHO</abbr> was founded in 1948.</p>
- `text-decoration:none;`  removes the underline from a {{link}}
- `title` attribute defines some extra information about an element in a `hover tooltip`
- [[html-image-maps]]
- `backgourd-image: url('');` must be single quotes
- `favicon` is a small image displayed next to the page title in the browser tab.
	- can create your own [favicon.ico Generator](https://www.favicon.cc/)
	- either save to root or create a images folder in root
		- `<link rel="icon" type="image/x-icon" href="/images/favicon.ico">`
			- common name for favicon img "favicon.ico"

- `<script></script>`
	- either contains `statements`
	- or external script file through `src`
- `<noscript>`
```html
<script>
document.getElementById("demo").innerHTML = "Hello JavaScript!";
</script>
<noscript>Sorry, your browser does not support JavaScript!</noscript>
```
- `<html lang="en-US">`
	- lang-country_code

# html attributes

