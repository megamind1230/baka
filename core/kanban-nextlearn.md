---

kanban-plugin: board

---

## nextlearn website

- [ ] llms.txt for the website
- [ ] which business logic to pick
	free/paid?
	/perma , /verified , /notverified, /perma-verfied
	
	how long would be the hosting for each?


## nextlearn desktop

- [ ] plugins support
	
	make sure hamburger menu show also plugins listed
- [ ] plugin: bg lofi music player
- [ ] built in : nextsnipe, snipe
- [ ] `i` in all profiles
	triggers open image overlay on the first image in the page (inside of study box)
- [ ] markdig
- [ ] ocr in the image overlay
- [ ] new mcq timestamps
- [ ] image overlay annotations
	
	or at least have live updates
	
	ex (either have a button that refreshes reading the image, better ig) 
	
	or (have image live image update)
- [ ] plugin: theme switcher 
	allows you edit a css to override the colors


## in progress

- [ ] slide which of these are easier to read ? img of bulked page content, img segmented
- [ ] [7/11/26 8:53 PM] Introbird NSB: UI showcase
	1. homepage with regex
	2. mcq UI
	3. dark / light theme
	4. study page UI with latex , code, quotes
	5. heatmap
- [ ] [7/11/26 8:53 PM] Introbird NSB: 6. focus timer
	6. settings
	7. handbook
	8. command palette
	[7/11/26 8:53 PM] Introbird NSB: demo
	[7/11/26 8:53 PM] Introbird NSB: questions
	[7/11/26 8:53 PM] Introbird NSB: ابراهيم عادل
- [ ] change yaml to toml format?
- [ ] `New Anki Flashcards sidebar panel with separate \[Basic\] and \[Cloze\]`
	
	these latex blocks don't have copy button, why?


## done

- [x] logo
- [x] simple todo timer `left sidebar` session volatile (evaporated each new session, nothing saved)
	
	only a pomodoro custom timer + a todo list and that's it
- [x] add support to `.txt` files
	inside of study page 
	
	but this file type now has a specific behaviour
	
	each page would be 25 lines max, with linebreaks
	
	so with `.txt` we split on counts not split on a specific heading format
- [x] dark theme / light theme
	
	but first let's const or extract all colors in a collective spot
- [x] what is color palette used in the app: give me a comprehensive list of all color + used where?
- [x] notify that `handbook` is auto-synced with new key bindings
- [x] notify 
	remove the snipe part from the readme.org
- [x] nofify that windows .exe might not work, cuz i lack a windows machine to consistently test on + that windows uses webview2 and not the linux webview + so we are dropping the windows support at the moment
- [x] scrape the gemini prompts
- [x] add `file:` filter in every search bar to only search by the disk name of the note
	
	example
	`file:baka #new`
	should show every deck/file/note that has the name baka in its disk name + that has also the tag `new` in
	
	same for `desc:` or `description:`
	
	same for `tags:` (so basically now we have 2 ways to search by tag `#new` or `tags:new`, `#parent/child` or `tags:parent/child`)
	
	also `title:`
- [x] add seach icon (lens) inside of  the placeholder of every seach bar
- [x] `back` button on the interactive mcq quiz, is aggressively sending me to the home search page (worng)
	
	should only send me to the mcq tabs
- [x] cancelled ensure works on Windows
	
	drop windows support due to inefficency
- [x] screenshots/ and screenshots.org
	
	and TOC for README.org
- [x] make sure the cmd palette is updated with the new commands
- [x] heatmap streak page 
	
	what time does it consider the next day
	
	
	cuz it's now 02:34AM and it didn't move to the block of `3 jun`
	
	
	it should consider counting new days at `12:00AM` midnight
- [x] notify that `open decks folder` and `reveal deck` are experimental features
- [x] add a new tiny feature the `ctrl alt shift o` 
	
	only two contexts (home, study)
	
	in every profile (vim,emacs,vscode)
	
	behaviour so it opens the exact directory where the deck is on (even if file is nested)
	
	if i'm in the seach page (it should work same as `o` ==> opens the root decks/ folder .. according to settings
	
	but if was inside of a study box then  open this exact directory of this deck  and highlight file (the same way obsidian does `show in system explorer` )
- [x] side bar should have a scroll bar
	if the window is squeezed
- [x] make sure all zindex values are ok + nothing gets cross overlapped by the study box
- [x] mcq tabs page  `back` button doesn't work
- [x] add this disclaimer too `make sure to review the ai generated contents, shape it and edit it the way you like`
- [x] add a notify `forgiving` in the docs
	as in forgiving cuz it allows `[[file]]` but searches for `[[file.md]]` or`[[file.org]]`
- [x] falcon eye
	1. move to settings
	2. check box
	3. activation shouldn't send me to first page (if it's activated inside of study page :bug:)
	4. falcon eye pages are clickable and redirect to the exact page (same as the ctrl g number in vim for example)
- [x] refine shortcuts
- [x] built-in: mcq tests from deck content
	
	
	using AI
	
	2 dedicated pages: 1st for gerenation, 2nd for taking these test and having feedback
	
	tests are for example stored in `~/magnus/nextlearn/mcqs/`
	
	same like the ai tag infer or the ai flashcards
	
	we would have a clone of search page
	
	that creates mcq questions + create a .txt or .md or .org file let's dicuss this
	these files would also have the correct answers
	
	then another page would be for taking these mcq tests, interactively select your answer for each question
	
	then finally you get a feedback of what you got (correct, wrong) with explanation
- [x] built-in: 
	anki flashcards deck export
- [x] built-in: tags inferencing from deck content
	
	using AI
	
	i mean could this feature help the user search better for the notes using the comprehensive list of tags provided by the ai?
	
	the ai would 
	1. read the whole deck 
	2. capture core concepts, sematics, topics ..etc) 
	3. write tags about them in the proper file format
	
	and this feature is useful for users that doesn't want to bother think of what exactly the tags should be for this note
	
	btw the ai should only append to the already existing tags and not overwrite them (to allow backward compatability)
- [x] frontmatter tags now support all tags styles (list/comma/array/quotes)
- [x] wiki links navigation
	
	now clicking links to files {.md / .org }  resolved as exisitng files with some proper relative paths to the decks folder, can now prompt you if you wanna go to that deck or not
	
	if yes, it would send me to that deck B on the same page i was last on inside that deck B
- [x] test wiki links first
- [x] cancelled built-in: add a zen mode
- [x] search page list cards are listed by Deck disk name
- [x] create a vscode mode of shortcuts along with the existing emacs and vim ones
- [x] create a command palette
	
	opens the available commands according to context
	
	triggered with `:` .. good for ppl who always forget shortcuts
- [x] footnote syntax
	
	shows as hover over preview
	
	plugin or built-in?
- [x] cancelled
	built-in: mermaid support
- [x] built-in: latex support
- [x] add code copy icon on code blocks and quote blocks
	
	same thing chatgpt does and github etc
- [x] `[~]` should also render as in progress
- [x] add a documentation `?` icon that can be triggred with `F1` 
	link in the app to redirect to the github readme
	https://github.com/megamind1230/side/blob/master/nextlearn/README.org
- [x] table of content (falcon eye) 
	rendered to the start of each deck
	built-in .. depending on the layout
	
	renders headings found in the deck as a `list`
	
	with no clickable links (just make it the simplest)
- [x] first: how would i change the app font on linux?
	on windows?
	
	ensure changing font works
- [x] create a shortcuts remap files
	
	vim users can our custom vim shortcuts config
	
	emacs users have their own config
	
	you can create your custom config
	
	how would we achieve this
	
	does this requires exposing or extracting the shortcuts code into it's own module?
	
	also does this require exposing function calls to be able to map them later to a shortcuts config?
	
	where to save these config files?
	
	is it a good idea to have a setting to switch shortcuts layouts according to the config selection?
- [x] ensure syntax highlighting works in both .md and .org code blocks
	
	how many languages supported on each (.md and .org)?
- [x] ensure clean code
	
	a really huge step
- [x] lvl3-task-3
- [x] lvl3-task-2
- [x] lvl3-task-1
- [x] lvl2-task-3 the dota webiste
- [x] built-in: heatmap
	
	also has reading statistics (how much time spent inside of the study page)
- [x] feature to zoom in/out the whole app window
	
	`ctrl =/-` is for zoom inside of image
	
	`ctrl +/_` is for zooming the whole app
- [x] inside of pinned page 
	add a learn button on each list card
	so i can directly learn that deck from there
- [x] add regex search like the one from file organizer
	
	don't add highlight cuz it's redundant
- [x] allow for page finding inside of study page
	
	`go to page: 11` > sends you there for faster nav
	
	using `ctrl g`
- [x] remove study page `/` search works
	
	i think just opening the deck in a text editor is enough
- [x] `CANCELLED`: make `e` which would open the default editor you picked from the settings to edit this current not
	
	make it fall back to just opening the directory of the deck (+ highlight it so the user can see it)
	
	also 
	ensure editing decks `e` works without crashing the app (if closed/killed the editor)
- [x] (depending on the settings.. btw decks directory setting should prompt me to select a folder .. like the way google drive asks me to select img to upload ) .. otherwise the default would be `~/nextlearn/decks/`
	
	add a functionality to open decks folder or directory
	
	shortcuts : `o`
	
	to allow users to fast create their own decks from inside of their file managers
	
	P36: also add a side bar item to open decks directory, but first make sure the settings page is working fine
	
	and better make the settings item in side bar the last item on the list (docked to bottom)
- [x] ensure there is no dead code in project
	
	P21: Kill DatabaseService.cs dead code
- [x] maybe this requires to change the list cards to have a 3 dots icon where you can trigger (pin/archive)
	
	plus on the side bar: would add 2 items (archived, pinned)
	
	so the archived are no longer seen in the search page
	
	but you can still see them inside of the archived page, you can unarchive them with a single button too
	(the decks are still on the same place (but renamed a bit differently))
	so the seach page wouldn't recognise them
	
	add archive button feature
	
	appends extension with`~` 
	same was as emacs does
	
	add pin or favorites deck feature
	
	just renames  the deck file 
	
	prefixing it in a certain way `+`
- [x] inside of img floating window
	add 
	next / previous arrow
	that triggers same functions as
	cap n / cap p
- [x] orphan text between the `#` and `##` in .md OR `*` and `**` in .org
	
	also text before H1
- [x] `More content here with *emphasis* and /italic/. #bug in render`
	
	`italic and bold<strong> #bug in .org is shows as ==> italic and bold<strong>`
- [x] اسأل الحفلة بكام
- [x] indentation recognitiona
- [x] does it support more image types? yes these
	.png
	.jpg / .jpeg
	.gif
	.webp
	.bmp
- [x] `>` renders a simple quote block
- [x] shortcuts trigger issue
	
	it gets hindered
	
	edit: just forget about it brother
- [x] can editing the fie live update it?
	edit: not that needed .. you can quit and reopen deck
- [x] ensure website embeds are only clickable with no preview
	edit: they render as-is
- [x] make sure images still render properly
- [x] restructure img recognition?
	
	imgs and decks on same lvl 
	
	instead of creating a directory with same name for each deck so that it can contain the imgs
- [x] ensure markdown and  links are clickable 
	and redirects to the browser
- [x] also let the study page have the Deck Disk name as a fall back if no `title` metadata provided
- [x] edit breadcrumbs
	
	discard the 2nd heading
	
	only display the 1st heading (lvl1 heading)
	
	cuz the lvl 2 is always shown in render
	so it's redundant
	
	and change heading 1 color inside of breakcrumbs to be a shade of Yellow
- [x] ensure all youtube embeds are only clickable (they don't render a preview)
- [x] pressing `q` or `d` should send me to search page(the decks page)
	
	+shoud also remember the last page i was on inside the deck
	
	so when i come back .. i should continue from the same page
- [x] ensure `esc` cancels input in search page




%% kanban:settings
```
{"kanban-plugin":"board","list-collapse":[true,false,false,true],"full-list-lane-width":false}
```
%%