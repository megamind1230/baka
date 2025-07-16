#1
# Leetcode tracker for (topswe100 ladder)
- https://topswe.com/
- https://docs.google.com/spreadsheets/d/1nyEGnc5XHBlKCRbTu5qUz65j4XTNti0JfSb7CgflLmo/edit?usp=sharing
	- deleted in 1 day
- a problem a day .. you can just search for problem solution directly

# who leads ?
khalid 3awad

# project idea
كده كده مش فطت ركبت هنعمل المشروع الساعادي
ثواني بس نعرض طرق التواصل
و
طريقتي في المذاكرة
والتطبيقات اللي بستعملها
يمكن حد يستعملها هو كمان
ويسرع من مذاكرته
# estimated days to finish a playlist or a course
- Minimum {2h = 120mins of} daily studying of track 
	- you still can study more.. but this is minimum
- estimated length of playlist at (1.0) speed {in hours} = **L**
	- how to know for youtube > https://ytplaylist-len.sharats.dev/
- max number of days to finish studying would be = ==mx==
	- ==mx== = **{L x 2.5 x 60} / 120**
		- 2.5 {to give you time to rewind and take notes}
		- 60 {to convert to mins}
		- 120 {mins of daily study}
- so the course must be finished in less than {==mx== days}
# vimium trick
what to do when you on youtube and want to use the default youtube shortcuts .. like f > full screen .. k > pause ?
just change to Arabic keyboard

# touch typing
- do not know the hand map > https://imgur.com/XmCdENj
- else > https://play.typeracer.com/ (don't need to sign in)
# why I hate whatsapp
- can't pin messages
- storage issues
- no threads
- no meetings
- no voice chats
# why threads is better for daily use and issue tackling
- cuz every issue has its own thread

# why discord
- threads
- real time voice chats
- screen cast
- voice messages (just download Vencord mod)
- channel for each major topic
	- [x] todo (where am I)
	- [x] extremely important links
	- [x] setting meetings
	- [x] help me
	- [x] psycho
	- [x] project ideas

# where to track each other
- a dedicated discord channel .. for daily todo
# my note taking app
- obsidian
- newly trying zettelkasten (my way)
# why obsidian
- lightweight
- offline 
- faster data access
- i said offline but.. still can upload online to goodgle drive, github
- plugins more than 1K
- graph view
- need to try obsidian .. ok wait ill give you a starter vault
# what is zettelkasten
- in brief.. notes related style of note taking .. goes like this
	- some info or question or idea comes to your mind .. it's {fleeting notes} (on notepad or mobile)
	- reading a book / took a lecture / watch a video twice .. it's {lecture notes} (same meaning but different terms)(on obsidian or notepad) {can be long.. so many quotes and images}
	- >>> better to remember the reference of where the note came from.. cuz it helps if you don't understand your notes later
	- process fleeting, lecture notes (make them with your own  simple words .. keep reference inside notes .. link related notes .. add tags) .. this process aims at making { permanent notes } { atomic smaller in size .. more like Q&A } 
	- look at the graph or the whole vault either
		- pick a random note .. review .. see if you can expand it or make it better
		- ask question related to your interests (fill in the gaps and complete the flow of your notes)(write the empty notes)
# how I study
- a flow some steps .. Pomodoro style using {Ticktick app 20 10 15 3 & `ctrl alt p` for focus mode }
	- on slide notes.. then
	- vids (almost sped up to 1.4 to 1.7){enhancer for youtube}
		- adblocker is {Ublock origin}
		- watch twice
			- first time and get important timestamps
			- second pretty normal or slow .. i take lecture notes.. remember .. sometimes the vid is condensed enough in a way that taking notes is useless here
		- go for book or more vids in case of misconception
	- practice and process and link notes
	- see if something needs spaced repetition {Anki}
	- solve finals
	- at the end of term I compress the vault and start a new one

# how to understand vim
- Vimium browser extension
- VSCodeVim
- coding fu
- my notes .. wait till it's done.. very soon
- practice 
# disclaimer using vscodevim needs a bit of shortcuts customization .. but you can copy my json file .. has my own shortcuts
# some wow things what vim can do

```
x > delete char
X > delete whole line
{line}gg > go to line
diw > deletes a word the cursor is on
dit > deletes what is inside an html tag .. and so on
* dgn ... > delete every instance of the word the cursor is on
ddp > swap lines
xp > swap chars
:0,+10d > delete first 10 line in file

regex in vim search
// all
{:%s/is/isn't/g}  >> means search for {is} replace it with {isn't} globally

// just the line I am in
{:s/is/isn't/g}

// just the first instance of each line
{:%s/is/isn't}

// replace every lone # the start of line with nothing (delete every h1)
{:%s/^#//}

// how to change special chars
{:%s#/#+/g}  >> changes every {/} into {+} .. so we just used a different delimiter


ds' > delete the ' around a text
cs'" > change them from ' to "
ysaptli > surround para with <li> tag
select in visual the S{ > surround with {}

```