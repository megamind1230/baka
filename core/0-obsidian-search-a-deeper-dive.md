#1
# built-in search functionalities
## in search bar 
- `ctrl shift f`
- better enable `explain search result` 
	- explains your search query and what it does
- diable `show more context`
	- just to make the search result easier to scroll through
	- enabling it makes search results bloated  
- showcase of how `copy search results` can be useful sometimes:
	- {`show path: on/off`, `link style: wikilink`}copy them then
		- paste into an empty note ..but why?
			- for a better search between the search results & a better view field of them
			- especially if there's so many of them
- `line: "wordA wordB`
	- both must be on same line
- `content: "productivity"` 
	- only the notes with (productivity) {in its content} 
		- AND not in the note name or in folder name
- `task: ""` shows all tasks in your whole vault
	- `task-done`
	- `task-todo`
- can use [[0-obsidian-search-a-deeper-dive#how to search and drop accents in obsidian ?|regex]]
## inside notes
- we can `ctrl f` to search for some text inside this note
- btw we can use the keyword `query` as follows

```query
bankai
```
- to search around your vault
- like this {bankai}

---
# how to search and drop accents in obsidian ?
- just use [[0-regex-or-regular-expressions-MOC|regex]] search by using `/regex/` in search bar

- [Obsidian Basics: Search & Starred Search - YouTube](https://www.youtube.com/watch?v=mbPS3GXFFA4)
	- `"text as it is"` search as literal
	- `OR` `AND` `-` `()` or,and ,exclude, order of precedence
	- `path: "att_bank/"` notes in folder att_bank
	- `match-case: A` only shows A not a
	- [[regex-practice-websites|learn more about character classes and quantifiers]]
		- `/./` any char.. except newline
		- `/\\d/` digit
			- `/\\D/` !digit
		- `/\\w/` word
			- `/\\W/` !word
		- `/\\s/` whitespace {tab, space, newline}
			- `/\\S/` !whitespace
	- if you find rewriting the same regex search query tedious 
		- remember that you can make use of the `bookmarks core plugin`
