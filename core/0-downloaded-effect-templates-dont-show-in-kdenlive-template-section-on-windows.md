
#1
#done
( on windows )
***problem was***: I download files from the download effect templates tab in Kdenlive UI
.. restart the program .. but the effects don't show under tempaltes section (as it should)
![[Pasted-image-20231210210041.png]]


==pre-solution==: download some file/folder finder for windows as the built-in one sucks.. in my case i downloaded {EveryThing from voidtools website}

==solution==: the already shown templates & the ones I downloaded must be in separate folders...
so I tried to find {using EveryThing} the folders {with the words templates in its name + the path shows some relation to kdenlive} ... 
resulted in these
I found this folder
`C:\Users\{MY_USERNAME_OK}\AppData\Local\kdenlive\effect-templates`
which had my downloaded ones
& Also found this other folder
`C:\Program Files\kdenlive\bin\data\kdenlive\effect-templates`
which contains the already kdenlive-provided effect templates
- ![[Pasted-image-20231210210133.png]]
- ![[Pasted-image-20231210210159.png]]
- ![[Pasted-image-20231210210221.png]]

so i copied the first into the second .. restart the program and booooooooooooom headshot
works as never was any problem ... ty for ur time

https://www.reddit.com/r/kdenlive/comments/18fasyh/downloaded_effect_templates_dont_show_in_kdenlive/