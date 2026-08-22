---

kanban-plugin: board

---

## nextlearn website
- [ ] llms.txt for the website
- [ ] which business logic to pick
  free/paid?
  /perma , /verified , /notverified, /perma-verfied

## nextlearn desktop
- [ ] plugins support
- [ ] plugin: bg lofi music player
- [ ] built in : nextsnipe, snipe
- [ ] `i` in all profiles
  triggers open image overlay on the first image in the page (inside of study box)
- [ ] markdig
- [ ] ocr in the image overlay
- [ ] new mcq timestamps
- [ ] image overlay annotations
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

## done
- [x] logo
- [x] simple todo timer `left sidebar` session volatile (evaporated each new session, nothing saved)
- [x] add support to `.txt` files
  inside of study page
- [x] dark theme / light theme
- [x] what is color palette used in the app: give me a comprehensive list of all color + used where?
- [x] notify that `handbook` is auto-synced with new key bindings
- [x] notify
  remove the snipe part from the readme.org
- [x] nofify that windows .exe might not work, cuz i lack a windows machine to consistently test on + that windows uses webview2 and not the linux webview + so we are dropping the windows support at the moment
- [x] scrape the gemini prompts
- [x] add `file:` filter in every search bar to only search by the disk name of the note
- [x] add seach icon (lens) inside of  the placeholder of every seach bar
- [x] `back` button on the interactive mcq quiz, is aggressively sending me to the home search page (worng)
- [x] cancelled ensure works on Windows
- [x] screenshots/ and screenshots.org
- [x] make sure the cmd palette is updated with the new commands
- [x] heatmap streak page
- [x] notify that `open decks folder` and `reveal deck` are experimental features
- [x] add a new tiny feature the `ctrl alt shift o`
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
- [x] built-in:
  anki flashcards deck export
- [x] built-in: tags inferencing from deck content
- [x] frontmatter tags now support all tags styles (list/comma/array/quotes)
- [x] wiki links navigation
- [x] test wiki links first
- [x] cancelled built-in: add a zen mode
- [x] search page list cards are listed by Deck disk name
- [x] create a vscode mode of shortcuts along with the existing emacs and vim ones
- [x] create a command palette
- [x] footnote syntax
- [x] cancelled
  built-in: mermaid support
- [x] built-in: latex support
- [x] add code copy icon on code blocks and quote blocks
- [x] `[~]` should also render as in progress
- [x] add a documentation `?` icon that can be triggred with `F1`
  link in the app to redirect to the github readme
  https://github.com/megamind1230/side/blob/master/nextlearn/README.org
- [x] table of content (falcon eye)
  rendered to the start of each deck
  built-in .. depending on the layout
- [x] first: how would i change the app font on linux?
  on windows?
- [x] create a shortcuts remap files
- [x] ensure syntax highlighting works in both .md and .org code blocks
- [x] ensure clean code
- [x] lvl3-task-3
- [x] lvl3-task-2
- [x] lvl3-task-1
- [x] lvl2-task-3 the dota webiste
- [x] built-in: heatmap
- [x] feature to zoom in/out the whole app window
- [x] inside of pinned page
  add a learn button on each list card
  so i can directly learn that deck from there
- [x] add regex search like the one from file organizer
- [x] allow for page finding inside of study page
- [x] remove study page `/` search works
- [x] `CANCELLED`: make `e` which would open the default editor you picked from the settings to edit this current not
- [x] (depending on the settings.. btw decks directory setting should prompt me to select a folder .. like the way google drive asks me to select img to upload ) .. otherwise the default would be `~/nextlearn/decks/`
- [x] ensure there is no dead code in project
- [x] maybe this requires to change the list cards to have a 3 dots icon where you can trigger (pin/archive)
- [x] inside of img floating window
  add
  next / previous arrow
  that triggers same functions as
  cap n / cap p
- [x] orphan text between the `#` and `##` in .md OR `*` and `**` in .org
- [x] `More content here with *emphasis* and /italic/. #bug in render`
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
- [x] can editing the fie live update it?
  edit: not that needed .. you can quit and reopen deck
- [x] ensure website embeds are only clickable with no preview
  edit: they render as-is
- [x] make sure images still render properly
- [x] restructure img recognition?
- [x] ensure markdown and  links are clickable
  and redirects to the browser
- [x] also let the study page have the Deck Disk name as a fall back if no `title` metadata provided
- [x] edit breadcrumbs
- [x] ensure all youtube embeds are only clickable (they don't render a preview)
- [x] pressing `q` or `d` should send me to search page(the decks page)
- [x] ensure `esc` cancels input in search page
