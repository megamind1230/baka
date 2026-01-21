[[todo]] , [grad projects](https://drive.google.com/drive/folders/1axtwf4X1hXZrA1S52po6SWfJVf2z_s0l?usp=sharing) 
[[home-extension]]

- [x] شبكات لاسلكية
- [ ] تطبيقات الهاتف
- [ ] معالجة الصور
- [x] النظم المدمجة
- [ ] موضوعات مختارة 1
- ![[Pasted image 20251022184608.png]]
```
A cinematic photo inside a metallic elevator, with the camera positioned close in front of the subjects (not too far). On the left is the 'Player=BAKA' - a young man , wearing an esports gaming black hoody for T1 esports league of legends team, with the team name "T1" as a red logo clearly visible. He stands casually and looks at the camera with a serious expression same as the Faker pose. "use the face and facial features of the reference photo don't alter". On the right is the 'Hero=Sylas' a realistic person dressed in an accurate cosplay of Sylas from Legends of Legends with his long chains dangling from his rests, . The Hero is taller than the Player, with his arm resting on the Player's shoulder, showing connection between them. Both are looking directly at the camera. Text labels float above their heads: 'Player' above the young man and 'Hero' above the cosplayer. Realistic details, immersive perspective, sharp focus, clean lighting, metall aspect ratio (9:16)."
```

# listing
mkdir myproject
cd !$

the art of unix programming  
idea a timer with profiles / pages
الهمزات
steno keyboar 


https://emacs-lsp.github.io/lsp-mode/page/lsp-csharp-omnisharp/

https://github.com/yt-dlp/yt-dlp
https://github.com/iawia002/lux

mf q alister dash on minion
mf q and syndra e


morde H fiora


https://youtube.com/@emacselements?si=GStOVMDys4p_fTOn
emacs

chain ganking mid
jg then supp .. or oppo

insert mode
ctrl e/y insert char below / above
ctrl g hjkk move 1 step
ctrl a reinsert last line ?


:dig
ctrl k cH .. heart

secrets calculator app


Tiktok another account my new google

autocmd filetype html some remap here
Vim

autocmd bufenter .*rc colorscheme nord
autocmd bufenter .*py colorscheme jellybeans 
Diff colorschemes for diff file types

1 to 15
Normal mode
15i1 .. gives 1's
Visual select 2nd till end then
g ctrl a

ab/iab someword What it means

cmap w!! w ! sudo tee %
cmd maps to allow edit the file you didnt open with sudo in the first place
```
:earlier 5min
:later 5min

:.! date
write date on cursor

Chitchat - Talk to strangers
https://www.chitchat.gg/

Anarchokapitalismus – Anarchokapitalismus (Urza.cz)
https://ankap.urza.cz/

https://docs.google.com/spreadsheets/d/16lC9hutxugFT9eOFoVWKrKNpWuAhApshUSDgciphRWA/edit?usp=drivesdk

https://gitlab.com/skybert/my-little-friends/-/blob/master/bash/.bashrc.aliases

Project: SQL Zoo | The Odin Project
https://www.theodinproject.com/lessons/databases-sql-zoo

zoe nidalee

GitHub - raysan5/raylib: A simple and easy-to-use library to enjoy videogames programming
https://github.com/raysan5/raylib

https://yiminchinese.teachable.com/l/products?sortKey=name&sortDirection=asc&page=1

https://github.com/chubin/cheat.sh


mkdir test && cd $_

ctrl r in bash

du -sh * | sort -h

rsync -ah --progress source/ dest/

`alt .`

watch -n 1 echo "nigga"

rename 's/ /_/g' *.mp3

for i in {1..100}; do
  printf "\rProgress: %3d%%" "$i"
  sleep .05
done
echo

find . -name "*.tmp" -ok rm {} \;

for f in *; do base64 "$f" > "$f".b64; done

mvb () { mv "$1" "$1".bak; } .. can do better

grep --color=auto -n -C2 "pattern" file

shopt -s autocd .. autocd

mark () { echo "$PWD" > ~/.marks/"$1"; }
jump () { cd "$(cat ~/.marks/"$1")"; } ..?
mark proj
jump proj

notify () { notify-send "Terminal" "$*"; }
long-task; notify "Done"

alias please='sudo $(fc -ln -1)'

while inotifywait -e modify main.c; do gcc main.c && ./a.out; done

echo "bash magic" | rev

ls | tee >(xclip -selection clipboard)

printf "%s\n" *.mp3 | xargs -P4 -n1 lame

echo -e "\a"

jobs -l
fg %1
bg %1

rm -rv --dry-run * .. what?

<space>secret_command
(HISTCONTROL=ignorespace)

(cd /etc && ls)
Directory unchanged after

:'<,'>normal @q

<gv
>gv

"_dd

g;         " older change
g,         " newer change

:%s//NEW/g
```

<C-r><C-w>    " insert word under cursor
<C-f>        " open command-line window (edit history!)

:g/TODO/norm A // done

vim.keymap.set("n", "Q", "@@")

~/org/
├── inbox.org      ; quick capture
├── tasks.org      ; actionable tasks
├── projects.org   ; multi-step stuff
├── notes.org      ; reference / knowledge
└── journal.org    ; daily logs

(setq org-agenda-files '("~/org"))

mkdir ~/org
touch ~/org/tasks.org

;; Enable Org
(require 'org)
;; Where my org files live
(setq org-directory "~/org")
;; Agenda files
(setq org-agenda-files (list org-directory))
;; TODO workflow
(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")))
;; Keybindings
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)


vim /#sometag/ *.*
copen

q:

hjkl , ctrl ud are not jumps



- great linux docs
	- [ ] linux.die.net doc website
	- [ ] the gnu manuals
	- [ ] personal blogs
- [[cool-articles]]
[Creating a C# application without SQL Server - Stack Overflow](https://stackoverflow.com/questions/8450863/creating-a-c-sharp-application-without-sql-server)
https://fullstackopen.com/en/

• nvim-colorizer

* video picker with dmenu , mpv

`ls *.mkv | dmenu -l 20 | xargs () mpv "()"`

https://youtube.com/playlist?list=PLV5XWfKkFpk7MJTKv5YdSSpT9b-vLslWu&si=3tv3CTpySzsTl3_X

https://github.com/keb-web/kickstart.nvim

https://github.com/zazencodes/dotfiles

.tmux .. config for tmux on gh

https://github.com/omerxx/dotfiles


www.programmingfonts.org


edit nvim registers 
:new
:put a
edit
"ayy

https://www.thecsharpacademy.com/

https://github.com/dotnet-presentations/aspnetcore-app-workshop

https://github.com/dotnet-architecture/eShopOnWeb



https://dev.to/sapanapal6/top-20-full-stack-projects-for-beginners-in-c-aspnet-net-core-4g6f

https://www.interviewbit.com/blog/asp-net-projects-with-source-code/?amp=1


https://dotfyle.com/



https://www.warp.dev/?utm_source=youtube&utm_medium=influencer&utm_campaign=cow&utm_content=crin


https://github.com/radleylewis/nvim-lite/tree/youtube_demo


https://github.com/josealvaradoo/lavyzim





https://gpanders.com/ can read native lsp articles here


netrw 
- back
- vim-dadbod DB plugin for nvim

screensy
share screencast on a link 

tempfiles.org
share files up to 100Mb


كام ssd تقدر كيسة مستعملة تشغلهم 



nvim-spectre.nvim
search and replace even with regex


:w !xargs touch
creates files with the names inside the folder .. one line each

loldodgegame.com

https://github.com/ahmedwaleed3378/MEC_Authentication


voda
01015759780
pw bakabaka@0A

lol id fierce howl, diligent 

never ward a lane.. save it for while in fights, predicting they're in bush

adc must be on same page as supp

before fighting .. think about numbers
adc fight front to back
while in fight .. think about whether to run or continue 

omakub
 Ubuntu linux setup for programming 
 
yt and tt channel for kids
toddlerscanread
syrtoonkids
curiousmind0808
rvappstudios
@officialalphablocks
@ABCmouse
@caillou
@artforkidshub
@LittleSports
@natgeokids
@HomeschoolPop
@Madrasetnabreaktime


* cmd to rename imgs with random names into jpg sorted numbers
ls -v | cat -n | while read n f; do mv -n $f $(printf "%04d" "$n.jpg") ; done;
* `dragon drag and drop for terminal 
* sxiv minimal gui img view

script to do man pages with dmenu and zathura

``bash
man -k . | dmenu -l 20 | awk '{printf $1}' | xargs -r man -Tpdf | zathura -
* `sicp: Structure and Interpretation of Computer Programs` a huge intro to emacs lisp with exercises

* `league of scrips` a collective github repo to dump all of my useful and practical scripts 

* `nvim -p f1 f2 f3` opens all as tabs
* btw most ppl dont use buffers thwt often.. so they remap gt, gT to moves between the buffers instead
* `lualine` is better ui for buffers, tabs , windows


* `twilight.nvim` simple dimming zen mode

* `aria2c` ig same as `wget`

* simple secure share for small files

bash
dir=$(uuidgen | cut -d'-' -f1) 
#optional, get uniq folder name to zip

mkdir /tmp/$dir # temp folder to compress
cp $1 /tmp/$dir #copy to compress there
zip -r /tmp/$dir.zip /tmp/$dir #compress
zipcloak /tmp/$dir.zip #pw
curl -F"file=@/tmp/$dir.zip" 0x0.st #upload
`


# c#

`readonly`
only changes inside ctor

`factory method` is
static func inside class to pass 
paras to the `private ctor`

`property` is 
a public way to view the `private backing field`
it has set, get

```
# korean
* ㄱ g
* ㅔ sl(ay)
* ㅋ k
* ㅁ m
* ㄴ n
* ㄹ L
* ㅊ ch
* ㄷ d
* ㅌ t
* ㅈ j
* ㅅ s
* ㅂ b
* ㅏ a
* ㅣ ee
* ㅎ h
* 요 yo
* ㅍ p
* ㅗ o
* ㅜ bl(ue)

* 겜 삭
* ㅐ (A)she 
* ㅓ(u)p
```
# c# projects
https://www.sourcecodester.com/c-sharp-project

https://code-projects.org/c/languages/project/c-sharp-projects/

https://www.reddit.com/r/csharp/comments/rxg12m/good_c_source_code/

https://www.guvi.in/blog/best-c-sharp-project-ideas/

https://www.kashipara.com/project/c-net-project_3


https://seanprashad.com/leetcode-patterns/


delete into the black hole reg in nvim
keybinding
ctrl w h
move window left
ctrl w n
switch built in terminal into normal mode
ctrl w s
hori split
or capital letters?
make a vim show case
ctrl w v 
vert split
A back to normal terminal nice
ctrl w ""
paste into terminal
what's on the default reg
how to regex in telescope.nvim
wish dot com idea
flash.nvim
obsidian.nvim
marksman.nvim
building a macro collection in nvim config
:ls
current buffers
ctag
	:tag
	ctrl ]
	jump to symbol origin according to tags file
sxhkd
wmctrl -a Brave || brave
brings opened brave browser into focus or just create a new one
mini-surround.nvim
awesome github
TheAlgorithms/C-Sharp
build your own x
free for dev
free programming books
computer science 
system design primer
public apis
best websites a programmer should visit 
learn anything.xyz

euphoria film


idea
buy me a coffee
بس الدفع بالطرق المتاحة في مصر
فودافون كاش ، فوري ، انستا باي

glass wire

cam scanner .. learn

vim racer


we account
pw sussybakalol0



arc browser
username sussybakalol0
old gmail
pw arcbrowser0

nitro pro

عبدالعظيم زاهر
محمود حسين منصور


time blocking template



450 Bluetooth adapter

script to replace whitespace with dash in file names on pwd

فيزا شراء دولية من qnb or cib

عايزين 
نكتب اهم معاملات اليوم في شيت اكسيل
نهتم شويتين بجروبات الواتس
المعاملة مع الناس
نكون علاقات مع مدرسين وسناتر اوسع
نشوف هل فيه مجال للتحسين؟ وهل فيه حاجة مش عاجبانا


macro recorder for windows, linux

arcolinux twm repos where to find them

rofi as a
clipboard history
emoji selector
theme selector

فيديو تعرف فيه الشباب بالديدامون وفاقوس

idea
اسم تطبيق الدراجات .. byxport

المسك الأبيض ، مسحوق السدر ، مسحوق/زيت الكافور
حجم الكف قرابة 

احمد يوسف مسجد الهدى 





code rabbit
an ai code review tool
milanote
	best collab project planning app
date -d 'some human readable verbose date'
factor 52
	in gnu terminal
ssh
	scp vs rsync
* ctrl d/u > ctrl d/u zz
* mini-surround.nvim
* leader ds > doc symbol easier to nav files
* marks> to nav between places in recent files + we can telescope marks
* lua-snip
* mini-ai better text objects
* cmd mode .. ctrl r w .. paste word under cursor
* args vs argdo
* Vi{i{ does outer selection 
* ctrl w q quit pane view not kill it .. to open :new ... :b tab tab
* gf file under cursor 
* ctrl o/i back and forth 
* ctrl w f like gf but in new pane
* :view file .. read-only 
* :grep something ... :copen shows results in whole folder
* ctag -R folder
* :tag something 
* ctrl x] complete tag
* ctrl xl complete line
* ctrl xf complete file path
* ctrl e cancel complete 
* _ or ^ first char of line
*

# dummy notes


```c
where is anki cards stored
	how to manaually add/edit ones without opening the app




  مروان بافالو
  forge core yt
 toddlers can read
abdo magdy

01044564652

topmost clock

:ls 
list open buffers
:b partOfItsName
goes to thata buffer

[(
jump to outer (

:6,8m0
copy lines to first line

:%y+
yank all


:r !ls

:%s/\(.*\),\(.*\),\(.*\)/\2,\1,\3/g
swap groups

celeste app
easy effects app
upscayl app
lossless cut app


قفل التطبيقات من الاعدادات 
الرقابة الأبوية تطبيق



idea
تخليل راب مش تحليل

ameersat.com
uname sbl
pw abcabc


idea
mobile alarm or notification scheme app
you just make a simple .txt file but with a specific format each line:
what time, PM or AM, name, repeat function
تقدر تعمل بيه سلسلة منبهات .. وهنعمل تطبيق يقدر يتعامل مع فايل التكست دا
ووقت اما المنبه ييجي وقته يرن ويظهر اسم المهمة 


vim
ctrl 0 in insert mode
puts you in normal mode for just 1 cmd



مش اول شوف تترفع
العائد المركب

idea
my distro of emacs .. e-mnk4

-ve space programming

ideea
محو الأمية 


script to ban nofab
alyernative to mobile

lol name id
wardOnKill, cide laner


itero.gg

vim
gUiw 
cap word

:read pathtofile
copy file content at cursor

:read !cmd
read cmd output

:g/http/d
all lines with http
will be deleted

:v/http/d
all lines without http
will be deleted

Network Name: Dr.Print
Type: WPA
Password: Moh1907#
Hidden


Network Name: level
Type: WPA
Password: 56794134
Hidden


210852
رقم محفظة فودافون كاش الخط الجديد

MEC
اسم المستخدم
01015759780
كلمة السر
lbkxqfdz


idea حلقة
افعل ولا تفعل
افضل نظام توجيهي


https://skillgap.pro/?srsltid=AfmBOooLE3C8sfqol32GZiwrhNLftTVWfp3sQV9Tn_E4gs12O_dGS2Xr

idea
who deserves to get the train
according to ppl data
like how poor/old/sick they r

ryze bot
zed, rumble jg
diana,gp mid
kenen,fiora,gp top
gp,kenen supp

codedex.com

idea website
math ranked 
you solve math problems live
whoever solves them faster get a higher score
and there is a leader board


https://github.com/Sin-cy/dotfiles

mec backend 119
اسم المستخدم
01015759780
كلمة السر
lbkxqfdz

https://www.linuxtrainingacademy.com/

https://github.com/SensorEvolve/VsCodeNvimKeybinds/blob/main/keybindings.json

https://medium.com/pythoneers/17-mindblowing-python-automation-scripts-i-use-everyday-523fb1eb9284

https://www.physics.udel.edu/~bnikolic/teaching/phys660/RUTE/rute/node23.html

https://rlworkman.net/howtos/rute/node23.html

https://medium.com/@thegregjames/10-advanced-useful-shell-script-commands-1fd52980f4df

https://github.com/epety/100-shell-script-examples


https://linuxsimply.com/100-shell-script-examples/

https://www.scribd.com/document/112934774/100-Shell-Programs-Part-II

https://www.emertxe.com/embedded-systems/linux-systems/ls-sample-programs/

https://gist.github.com/bradtraversy/ac3b1136fc7d739a788ad1e42a78b610

https://www.hostinger.com/tutorials/bash-script-example

https://www.freecodecamp.org/news/shell-scripting-crash-course-how-to-write-bash-scripts-in-linux/

https://github.com/ruanyf/simple-bash-scripts

https://www.macs.hw.ac.uk/~hwloidl/Courses/LinuxIntro/x864.html

https://www.tecmint.com/create-shell-scripts-in-linux/

https://hackmd.io/@5gkOktjvQi2isL_Ebd7tIg/SyrhaxRaI

https://codeburst.io/your-perfect-kickstart-to-shell-scripting-857b81c0939b

https://github.com/yaya2devops/linuxmap#3--get-familiar-shell-scripting-and-automation




01029856492 فاطمة مراة علي

arewewaylandyet.com > a set of wayland specific software
wiby.me > good quality google
learnwithnaw.com > some cool vim to print
	her dotfiles
corey schafer > python

copy bugswriter script for 
	dmenu as an arch-based pkg mngr
	cbspells {clipboard spells}




clever syntax


rempg python script

join -1 2 -2 1 file1.txt file2.txt
joins the files of they have a common column


insider's viewpoint اسم سلسلة تتكلم فيها مع ناس في مجال متخصص او ناس في كليات بنفسها يعرفونا عليها

the stocks v3 website 

df YouTube extension 
rofi -dmenu .. is a rofi mode that runs dmenu cmds as is

idea YouTunnel a YouTube funny clone

df -i 
how many inodes left

df -u
desk free .  available 
du -u
desk usage 

negative space programming


emacs
https://youtube.com/playlist?list=PLlONLmJCfHToFfk1WgTOwZMfIr062jIN9&si=gm5Y-_lshxQuYB4o



idea ..  وقت فراغك تقدر تتعلم وتتفرج UI/UX 

strawpoll website


funny user name
pinepied
mist
flame
cornflames

كتكوتين في الزريبة ونكبر العدد بالراحة خالص .. ونتكلم مع تاجر ياخدهم بالكيلو 
المطبعة تيشيرتات .. مطلعة la koshk
مخلل
منحل





vim

usevim.com stop the vim configuration madness
vim plugin 
surround 
commentary 
replace with register 
why atom cannot replace vim 
repeat.vim
titlecase
sort motion
system copy

stack overflow
your problem with vim is that you dont grok vi



mpv scripts 

can i use the vim plugins and configuration inside emacs


idea 
تطبيق cycle
هتعمل تطبيق توصيل طلبات خفيفة في نطاق 3 كيلو
واوزان الطلبات لا يزيد عن 50 كيلو
سعر الرحلة 5 جنيه
طريقة الموثوقية هو ان التطبيق بيعطي لصاحب الطلب والموصل نفس الكلمة مشيرة qr code
ومن جوا التطبيق تقدر تقرأ الاكواد من غير نت
التطبيق التوصيلات فيه بتتحدث يومياً 
وفيه تحديات شبابية زي
اللي يلم زبالة الشارع بتاعته ويجيبها في مكان معين في البلد يكسب 5 جنيه او نقاط موثوقية في التطبيق او رصيد موبايل

mostaql website

idea
all i know about... abbr AIKA (vim, nvim , obsidian, gimp, kden)


wc word count.. shows num of lines -l,words -w,chars -c

uniq -c .. freq of occurrence 
 -u .. show singles
 -d .. show duplicates 

try
tr -d ello
hello

a word in vim is either a seq of letters of a seq of symbols
.. meanwhile 
a WORD is a seq of any non-blnk chars

]) [{

ctrl e,y move 1 line without moving cursor

neovim
https://youtube.com/playlist?list=PLhoH5vyxr6QqPtKMp03pcJd_Vg8FZ0rtg&si=SXpm5xTyfJfTjzz1
https://youtube.com/playlist?list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ&si=Po75Slz6oy67LgY3

anki
https://youtube.com/playlist?list=PLoRUsKSPCHAYv6OnDZQnb_TjGn6WGIpud&si=3KDlKM3drCpeYeGu

vim meetups
https://youtube.com/playlist?list=PL8tzorAO7s0jy7DQ3Q0FwF3BnXGQnDirs&si=OVmdFxNazcl1VbZ9

emacs meetups 
https://youtube.com/playlist?list=PL8tzorAO7s0he-pp7Y_JDl7-Kz2Qlr_Pj&si=ZdbeFZqwVL8Eg1aW

emacs
https://youtube.com/playlist?list=PLEoMzSkcN8oPH1au7H6B7bBJ4ZO7BXjSZ&si=AufGw6n8Yr2hTWT0

linux cmds
https://youtube.com/playlist?list=PLjuNew2L8Y5dpBV7uOV74fbr66QCn029x&si=ClgL2bKUbbRDTrXd

swift jobs eg
https://www.tiktok.com/@techwruby/video/7275392803629255942

swift jobs
username: sussybakalol
pw: sylasbaka
old gmail

timewrap extension

better clipboard manager

idea questionnaire website 


gitflow
https://youtube.com/playlist?list=PL_RrEj88onS98ELS0mWqav1qTIYaChf41&si=PTklczeUFN2kGb_F

افضل قطعة في محتواك هي اللي ممكن تتكرر بصيغ مختلفة وستل تجيب مع الناس

تطبيق نترا.. اعرف ايه الخطوط المسجلة باسمك ورقم بطاقتك

mahara tech > old gmail
larbs and ml4w de

فيه حبة حاجات كده حلو جدا إن الاطفال يتعلموها
زي مثلا ازاي انك لو استعملت ال 
binary tree
هتعرف تري اي مجموعة ارقام عشوائية بسهولة جدا
ear whistle meme sound

google offline codes

حلقة حاجات مهمة في المستقبل
تخيل ان كل مجال مدينة وانت ماشي فيها

pressing win on a vm triggers the host not the vm

git script to automate pushing new or unstaged files into my github repo with a limit of 40 filea each time .. till it finishes 


how to ftp correctly on linux ..ask linux4noobs
or how to transfer files generally between 2 devices
do we use apps or just some protocol connection 
designify.com ..remove bg from images plus add a cool one

beautiful.ai .. cool ppx presentations

cleanup.pictures .. remove unwanted objects from images

classcentral.com .. find a course by subject

deepl.io .. better google translate 

phtomosh.com .. effects and filters on vids

jitter.video .. nice free visuals in your vids

onetab extension for Firefox.. many tabs in 1 page + save ram

unhook + news feed eradicator .. filter yt ui

vidiq .. good to always have and see statistics of vids

project naptha .. copy text within images on web

magical text expander .. ahk for browser

thanaverage.xyz .. compare yourself 

musclewiki.com .. train a muscle 

https://webkay.robinlinus.com/ .. what browsers know about me

cleanpng .. good for png

10fastfingers .. has arabic tt tests

edit.photo .. very simple photo editing tool website ( good for beginners )

panzoid .. yt channel intros and outros templates

https://urltown.io/

wget
fetch 
youtube-dl

proj idea pick one
a website for polls
get access to a session with a link and pw
you vote .. the poll maker sees results


https://github.com/practical-tutorials/project-based-learning .. github project based learning 

theprimeagen git notes https://github.com/ThePrimeagen/fem-git


pix app for linux


jitsi on window linux .. zoom alternative 

dataview query to show ghost files obsidian 

template folder in home dir is for templates to pop up in context menu.. try it


simplified slides fron college for prerp school students to know some abstractions about some concepts..eg how the internet works, to programming happens.. etc

filezilla from host to vm

اعمل موقع نرفع عليه ال md اللي بنلخص في الشباتر بتاعة الكتب دي


make script for making files
create just input file and redirect outptut to terminal 

can i contol kde or linux or screen Just from mobile .. with ftp or ssh or anything that doesn't consume data


https://www.reddit.com/r/neovim/s/X93d2N2jO7


vim gcap .. comment para






obsidian
https://youtube.com/playlist?list=PLSWNAxJuTT5HZN_kTsR_mrUKtJvfqTQmc&si=_Q4hOx4D10X4S3vA

https://youtube.com/playlist?list=PLV5XWfKkFpk7MJTKv5YdSSpT9b-vLslWu&si=eUD89fL18ZQ1rpJ_


vim search sensitivity
/something\c search for all matches no matter the case
 set ignorecase is like using that behavior by default 
 set smartcase is like case sensitive only if you enter capital letters

gthumb img , kwrite text editor good apps linux

ctrl alt left ? vscode split
- [ ] mermaid live editor online 
- [ ] time blocking in obsidian?
- [ ] full calendar in obsidian?
- [ ] i know how to drag and drop from host into vm.. but the opposite?

- [ ] shared folder vm 
	- [Virt Manager | مشاركة الملفات بين لينكس وويندوز الافتراضي - YouTube](https://www.youtube.com/watch?v=2KczxDvTuAE)
	- [Share Files Between your Linux Host and VMs with virtiofs | KVM - YouTube](https://www.youtube.com/watch?v=DjEbeW0Px2g)
	- [virtiofs is not yet supported - YouTube](https://www.youtube.com/results?search_query=virtiofs+is+not+yet+supported)
	- ssh or filezilla there
- [ ] shortcuts to move to start/end of line inside a 60% keyboard {no home-end keys allowed}
- [ ] how to enable numpad on log in screen
- [ ] how to make my same Gmail has 2 username
	hassan24641@gmail.com and
	mnk4_all_caps@gmail.com


the algorithms website
livecodes.io





---
---


>lvl4
	cv and interview
	cloud computing , servers  , DevOps
	marketing.. then business if possible
	design patterns


[[bitwarden-how-to-use-it]]



drafting
drafting prio
    top mid supp jg adc
`picks` 4,5 blueside are good to be either {top, mid} or {supp, jg}

The authenticity of host 'github.com (140.82.121.3)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names.




$ ssh-keygen -t ed25519 -C "hassan24641@gmail.com"
Generating public/private ed25519 key pair.
Enter file in which to save the key (/c/Users/dt/.ssh/id_ed25519):
Enter passphrase for "/c/Users/dt/.ssh/id_ed25519" (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /c/Users/dt/.ssh/id_ed25519
Your public key has been saved in /c/Users/dt/.ssh/id_ed25519.pub
The key fingerprint is:
SHA256:xVVlCTDv/cqVU2WAYAWRLxcNBYROIf9fImtpiIntmGE hassan24641@gmail.com
The key's randomart image is:
+--[ED25519 256]--+
|        . *%BO=.+|
|         =+.= .+ |
|         o+. o  o|
|         .o.+ ...|
|        S  oo...o|
|       o o . = o+|
|      E + . = .oo|
|     . =   o . o.|
|      o .     o  |
+----[SHA256]-----+


ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGiPs4X3gUDuDh7g9bKys3bL7FvwY90pJovdg0UwtbdB hassan24641@gmail.com


app to compress videos size
i love lualine to be on top NOT BOTTOM

oil.nvim,telescope,live theme changer, treesj, mini.surround, flash.nvim, tabout, conform instead of nonels, harpoon, nvim.colorizer, 

why ahk super q doesnt work on windows related apps ?

what is wrong with my reddit?

the primeagen config vids
emacs as a cpp ide for fci new-comers
kitty use vim mode shortcuts

what is rss feed ?

set default yazi launch apps .. also for thunar
  yazi.toml ex from github

git sync obsidian vault
  make a gitignore {ignoring a folder that you put most of the files there}
    then just sync these
    and day to day grap so outside of that folder to be synced

qtile mouse/touchpad support
	set mouse double click, scrolls

ctt nvim

ctrl c/v doesn't work while on arabic layout .. qtile

proper youtube video cli downloader / script

gnu stow for dotfile management


korean/chinese/arabic fonts

good ways to backup your system { config, dotfiles, scripts, aliases, installed packages } 


nerd fonts icons in neovim 
	works but {somehow icons not showing}

docker create VMs, emacs versions {better or just use vbox}

read ppl vim keybindings , what cool tricks they have {primeagen}




change thunar default terminal emulator


clipboard manager 
	copyq	https://www.youtube.com/watch?v=DhfwWH5N3IA
	clipmenu	https://www.youtube.com/watch?v=nfPSpkqv0UM


what is obsidian.nvim
zathura marking


https://github.com/BreadOnPenguins/dots/