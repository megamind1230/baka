#1
- also called obsidian md
	- cuz it uses markdown files/notes
- md is a superset of html
- viewer vs editor
	- obsidian is both
> any shortcut that does not work for you .. you can manually set/change it yourself easily

- sometimes I use the word `note`, while obsidian uses the word `file`
- a good book to read about note taking & making [[how-to-take-smart-notes-by-sonke-ahrens]]
# simple MarkDown.. h1

also h1
===

## h2
also h2
---
### h3 notice the toggles{folding} beside the bigger ones
**`**double**` or `ctrl shift b` bold**
***`***triple***` italic bold***

_italic `_`_
*same as `*text*`*
___`___`italic bold again lol___

==highlight== `ctrl j` you still can change this color from a [[obsidian-css|simple obsidian css file]] 

- bullet points / an unordered list `ctrl .`
	- created with `* or + or -`
- `enter` for siblings
	- `enter tab` for child
- `shift tab` back to siblings
- A trick in the unorder list: to ignore the `-` and display it as it is
	\- just use `\` to escape the `-`

1. numbered/ordered list
2. you see


---
- separator/ also called {hr or horizontal rule} like `<hr> in html`
	- `---` 
		- or with spaces `- - -` is fine tho
	- `___`
	- `***`




# for a note: create, edit, search, navigate, bookmark
## create
- `ctrl n` > new note in new tab
	- `ctrl shift n` > new note in the side pane
	- later we discuss the `quick switcher core plugin`
- `f2` > rename note 
- `ctrl alt n` > reveal (highlight) current note in navigation {files tab}
	- `ctrl alt shift n` > open in file manager

## edit
- remember we learned some MarkDown
- `ctrl p` > also remember that command palette is your best friend to execute commands
- `alt up, down` > move line 
	- `alt shift up , down` > [[obsidian-plugin-{outliner}|outliner]]: move list with its children up, down
- `note composer` 
	- on a whole note: `merge current file` with another file 
		- deletes that note 
		- and merges it with the target one
	- on just a selection: `extract current selection`
		- leaves an `inner link` to the target note
		- and cuts this selection into the target note
- `ctrl m` > move current file to another folder
	- sometimes you create it into root at first.. write down something inside 
	- .. and then move it to another folder by drag-and-drop
	- but this is faster
- `ctrl /` > toggle comment 
	- not a real code comment
	- just some obsidian specific syntax
- `ctrl l` > toggle a checkbox list 
- `ctrl shift p` > toggle pin
	- I sometimes make it easier `alt p`
- toggle folding of headings & lists
	- `alt t` > fold all
	- `alt shift t` > unfold all
	- `ctrl up/down` > just one of them
- `ctrl h` > find & replace inside the file 
	- the vim way is somehow better
- `ctrl s` > toggle left sidebar, `ctrl b` > right sidebar 
	- meanwhile remember: bold text `ctrl shift b`
- `ctrl alt backspace` > delete current note
## search
- search in current note > `ctrl f`
- search in the whole vault data > `ctrl shift f`
## navigate
- `alt [` `alt ]` > navigate history of this tab
	- as in browsers
- `ctrl q` > `quick switcher core plugin`
	- your 2nd best friend after command palette
	- `up/down` to navigate
	- `enter` open in current tab
		- `ctrl enter` open in a new tab
		- `ctrl alt enter` open in a side pane
	- `shift enter` create a new note
		- and open in current tab
- later we discuss `graph view core plugin`

## bookmark note
- bookmark notes 
	- (save the most important& most frequently used.. in one obsidian tab)
- either the top left 3 dots then bookmark .. or shortcuts
	- `alt s` > bookmark.. can put into groups also
	- `alt shift s` > remove this file
	- `ctrl alt s` > show all
- you can still use the `bookmarks core plugin`
	- you can bookmark specific 
		- notes
		- folders
		- searches
		- headings
		- graph views
		- blocks or paragraphs or segments

# images
`![[Pasted image 20240318225325.png]]`
	- ![[Pasted-image-20240318225325.png]]
- image should be local
	- {which means:inside your obsidian vault}
	- better specify a folder for then
		- eg: {image_attachments}
- to resize the image just use `|` then the dimensions like this
	- `![[Pasted image 20240318225325.png|300]]` width is 300px
	- `![[Pasted image 20240318225325.png|300x50]]` now height is 50
## how to resize all images in a file to a specific size
- `%s/png/png|350/g` using vim replace/substitute
# tags
- no whitespaces in between words
- can be nested with `/` ..to create child tags
eg: 
```
#rev/obsidian_tutorial
```
- `tags icon` on the right sidebar.. shows all tags in your vault
# graph view core plugin
- whole vault
	- `ctrl g` > graph view .. btw it has a search bar
		- search notes there
- just current note
	- local graph view `ctrl alt g`

# 3 types of links in obsidian
1. inner/internal/wiki links `[[]]` .. links to some local file in your vault
2. external `[]()` .. links to things from the Internet
3. embedded link with either `!` or `html ifram tag` 
	more on that later
# navigate with inner links
[[0-obsidian-plugins-MOC|just a {backlink} to some local note]] 
- put the cursor inside the inner link text
	- `alt enter` > open in same tab
	- `ctrl enter` > in a new tab
	- `ctrl alt enter` > in a new pane
	- `ctrl hover` > preview note popup shows
		- `page preview core plugin` should be on

- how to mention/reference  ^0aed5c
	- {a whole note} properly {rename with `|`} in obsidian { a trick with inner links }
		- [[0-obsidian-first-step|same file we read btw]]
			- which is 
			  `[[obsidian md first step|same file we read btw]]`
	- {a header in a note} > use `#`
		- [[0-obsidian-first-step#navigate with inner links]]
			- which is 
			  `[[obsidian md first step#navigate with inner links]]`
	- {a section or a paragraph in a note} just use `^`
		- [[0-obsidian-first-step#^0aed5c]]
			- which is 
			  `[[obsidian md first step#^0aed5c]]`
- fyi: note names that have `# | [ ] ^` will not be able to be linked .. I think now you know why 
# 2 types of inner links
## outgoing links
 means: from this note towards the others { what notes does this current note mention? }
## backlinks
means: from other notes towards this current note { what notes mentioned this current note? }

# external links
- `ctrl k` > make an external link quickly [text](https://youtube.com/shorts/bmrnb3Cj90I?feature=share)
	- `[]()`
# embed links
- for both internal & external links
	- just prefix them with `!` 
		- and now you a preview or an embed of the link
- also for youtube you can use the `ifram embed link`
# hotkeys
settings > hotkeys > you can search hotkeys but just pressing them {the keyboard symbol there}

# others
- `ctrl ,` > settings
- `ctrl p` > command palette
	- can also use the `slash command core plugin`
- `ctrl shift r` > reload obsidian {good for changes to take place}
	- `f5` for me now
- `ctrl shift v` > open another vault
- `ctrl r` > get a random note
- `alt shift m` > toggle minpmap/ markdown in markmind
- `ctrl alt .` > toggle numbered list

```
alt shift ` > toggle stacking mode
```
- remember that obsidian is electron based.. so it allows you to render html as if it is a browser

# [[0-best-fonts-to-distinguish-between-characters]]
# [[obsidian-second-step]]
