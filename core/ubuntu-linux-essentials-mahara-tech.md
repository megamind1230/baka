#1 
# 03-07-2024
- parsing = تفصيص بالمصري
- `hostname` = `uname -n` = nodename
	- `uname -r` = kernel version
- فرق بين الـ cmd option VS cmd argument
	- option > has `-letter or --word`
- man
	- ![[0-man-pages#iti]]
- `ls -d somedir` 
	- info about this current `somedir` directory
- df vs du
	- [[0-50-most-popular-linux-terminal-cmds-{freecodecamp}-and-more#du]]
	- [[0-50-most-popular-linux-terminal-cmds-{freecodecamp}-and-more#df]]
	- `df -h` used & available space in all mounted partitions {the big picture}
		- `df -h someMountPoint` .. total used & available space of this folder as a whole
		- `du -h` for also every sub-folder inside {only shows folders / directories} {a snapshot of the current folder state}
			- `du -sh` is for summary {just the whole folde but not sub-folders}
- avoid these while naming in linux 
	```
	<>?*#`'"
	```
# 04-07-2024
## ch5
- [[0-user-and-group-management]]
- to change things in `/etc/shadow` use `chage [options] username`
	- ![[Pasted-image-20240704103659.png]]
- [x] [CH05\_VID11\_"sudo" Command - YouTube](https://www.youtube.com/watch?v=ANEN-wbO3uk&ab_channel=MaharaTech-ITIMOOCA)
	- `su` vs `su -`
		- ![[Pasted-image-20240708191102.png]]
	- زمان كنت علشان ابدل اليوزر على الروت .. كان لازم نعمل الـ su دي وتكون عارف السري بتاع الروت
		- وكمان فيه مشكلة .. تخيل لو فيه شخص ما عمل مشكلة .. مش هنعرف نجيبه .. ﻷنه كله بيسجل كإنه روت
		- وهنا يظهر حل الـ `sudo` واللي بتخليك تاخد جزء من صلاحيات الروت .. وتقدر توصل لها عن طريق السري بتاعك إنت .. زائد مش لازم تبدل اليوزر بتاعك لروت .. وبالتالي هيكون أسهل علينا نحدد مين اللي عمل المشكلة الفلانية
		- sudo is more secure
			- بشكل افتراضي أول حساب هيتعمل على الماشين .. هيكون ليه كل الصلاحيات مع الـ sudo
				- لكن لما نضيف يوزرز جداد .. الظريف إننا ممكن نحدد مين يقدر يعمل إيه وينفذ أنهو كوماند
	- بنحدد دا بقا في فايل اسمه
		- `/etc/sudoers` .. or better use [[visudo-command|visudo]] for syntax checking on save
		-  مثال على تحجيم بعض الأوامر ليوزر ما
			- ![[Pasted-image-20240708192358.png]]
			- 1 > حددنا الـ cmds دي فقط واختصرناها في alias معين
			- 2 > خلينا user2 ليه بس صلاحية إنه يستعمل الأوامر دي فقط لا غير
				- يعني حتى الـ `ls` مش هيقدر يستعملها
- [[chown-command]]
## ch6
- [ ] [CH06\_VID02\_File Permissions - YouTube](https://www.youtube.com/watch?v=kmvZDTZN_XM&t=5s&ab_channel=MaharaTech-ITIMOOCA)
	- 
- [ ] [CH06\_VID03\_Changing the Permissions - YouTube](https://www.youtube.com/watch?v=1jvkBwNXvzQ&ab_channel=MaharaTech-ITIMOOCA)
- [ ] [CH06\_VID05\_Set GID Bit - YouTube](https://www.youtube.com/watch?v=ynI8tQa32w4&ab_channel=MaharaTech-ITIMOOCA)
- [ ] [CH06\_VID06\_Sticky Bits - YouTube](https://www.youtube.com/watch?v=KFqdNckg3tM&ab_channel=MaharaTech-ITIMOOCA)
- [ ] [CH06\_VID07\_The Default Permissions - YouTube](https://www.youtube.com/watch?v=vyyxQh1-4WI&ab_channel=MaharaTech-ITIMOOCA)
## ch7
- [[0-linux-permissions-MOC]]
- [ ] [CH07\_VID01\_The Default PermissionsVirtual Consoles - YouTube](https://www.youtube.com/watch?v=vSHFku-mDCw&ab_channel=MaharaTech-ITIMOOCA)
- [ ] [CH07\_VID02\_The Default PermissionsSystem Shutdown and Reboot - YouTube](https://www.youtube.com/watch?v=_mnylokmOFA&ab_channel=MaharaTech-ITIMOOCA)
# 05-07-2024
## ch8
- [ ] [CH08\_VID01\_The Default PermissionsNetwork Configuration - YouTube](https://www.youtube.com/watch?v=wdVnKYvnfEk&t=2s&ab_channel=MaharaTech-ITIMOOCA)
- [ ] [CH08\_VID02\_Shell Initialization Files - YouTube](https://www.youtube.com/watch?v=-Vul-_gA7m0&ab_channel=MaharaTech-ITIMOOCA)
- [ ] [CH08\_VID03\_Environment Variables - YouTube](https://www.youtube.com/watch?v=Xuvy6AqQ6hA&ab_channel=MaharaTech-ITIMOOCA)
- [ ] [CH08\_VID04\_More about Environment Variables - YouTube](https://www.youtube.com/watch?v=HredZ3VZU0Y&ab_channel=MaharaTech-ITIMOOCA)
- [ ] [CH08\_VID05\_Alias Command - YouTube](https://www.youtube.com/watch?v=GCu6JnNPAV4&ab_channel=MaharaTech-ITIMOOCA)

## ch9
- [ ] [CH09\_VID01\_Processes - YouTube](https://www.youtube.com/watch?v=CatVfLVWu5Y&ab_channel=MaharaTech-ITIMOOCA)
- [ ] [CH09\_VID02\_Change Process Priority - YouTube](https://www.youtube.com/watch?v=Xhi0YeHtMQI&ab_channel=MaharaTech-ITIMOOCA)
- [ ] [CH09\_VID03\_Overview of Signals - YouTube](https://www.youtube.com/watch?v=7lWNFXDPBbA&ab_channel=MaharaTech-ITIMOOCA)
- [ ] [CH09\_VID04\_Send a Signal to a Process - YouTube](https://www.youtube.com/watch?v=NfrJcWKjJvo&ab_channel=MaharaTech-ITIMOOCA)

## ch10
- [ ] [CH10\_VID01\_Output Redirection - YouTube](https://www.youtube.com/watch?v=q0uskzciSXk&ab_channel=MaharaTech-ITIMOOCA)
- [ ] [CH10\_VID02\_Input & Error Redirection - YouTube](https://www.youtube.com/watch?v=kBCsQEOxiuE&ab_channel=MaharaTech-ITIMOOCA)
- [ ] [CH10\_VID03\_pipe & tee Commands - YouTube](https://www.youtube.com/watch?v=L8DSv0mCbDM&ab_channel=MaharaTech-ITIMOOCA)

## ch11
- [x] [CH11\_VID01\_wc & diff Commands - YouTube](https://www.youtube.com/watch?v=cIPpT4z3ono&ab_channel=MaharaTech-ITIMOOCA)
	- [[0-diff-command]]
- [x] [CH11\_VID02\_cut & grep Commands - YouTube](https://www.youtube.com/watch?v=iru3pGUhTho&ab_channel=MaharaTech-ITIMOOCA)
	- `cut -f1,6 -d: /etc/passwd` .. it is like text processing
		- shows fields 1,6 from passwd file .. knowing that the delimiter is `:`
	- [[0-grep-command]]
- [x] [CH11\_VID03\_sort Command - YouTube](https://www.youtube.com/watch?v=li5Nc1T5upY&ab_channel=MaharaTech-ITIMOOCA)
	- [[0-sort-command]]

## ch12
- [x] [CH12\_VID01\_Inodes - YouTube](https://www.youtube.com/watch?v=dk6cVN8LTiE&ab_channel=MaharaTech-ITIMOOCA)
	- index nodes: is a table  made in the file system of each partion
	- inodes are not repeatable in the same partion
	- to show inode `ls -i`
- [x] [CH12\_VID02\_Soft Link - YouTube](https://www.youtube.com/watch?v=lQetwt1ZNrI&ab_channel=MaharaTech-ITIMOOCA)
	- creating a soft link .. creates a new entry in the inode table .. so extensive use of soft links can make you run out of inodes
	- `ln -s original softlink`
	- soft link must have the 3 rwx for it to properly work 
	- any cmd on link will affect original except for `rm`
- [x] [CH12\_VID03\_Hard Link - YouTube](https://www.youtube.com/watch?v=-O8JedWADH0&ab_channel=MaharaTech-ITIMOOCA)
	- better than soft in that it doesnt use a new inode number .. it just incr the number of links
	- ln original hardlink
	- data is not duplicated .. it just has 2 ptrs on it
	- `rm` original wont affect hard link 
- [x] [CH12\_VID04\_Search for files - YouTube](https://www.youtube.com/watch?v=kRLx6rxqIjk&ab_channel=MaharaTech-ITIMOOCA)
	- `locate something`
		- fast , depends on a db that is updated by root.. cannot show recently live created files
			- `sudo updatedb` always before using the locate cmd
			- [[0-what-is-crontab-or-cronjob-in-bash]]
	- `find / -name something 2>/dev/null`
		- searches the live files system
		- `2>/dev/null` redirects errors to a linux black whole not to show them




## ch13
- [x] [CH13\_VID01\_File Archiving - YouTube](https://www.youtube.com/watch?v=PgEkrWhBdwE&ab_channel=MaharaTech-ITIMOOCA)
	- [[0-50-most-popular-linux-terminal-cmds-{freecodecamp}-and-more#gzip or gunzip vs tar| tar]]
- [x] [CH13\_VID02\_File Compression - YouTube](https://www.youtube.com/watch?v=WSupsfw6-Vg&ab_channel=MaharaTech-ITIMOOCA)
	- بتختلف طرق الضغط .. فيه منها الحديث وبالتالي الـ compression ratio بتاعته أكبر
	1. `compress -v files.tar`
		- creates a `.Z` file
		- `zcat file1` if file1 was a compressed txt file .. you can view its content
		- `uncompress -v files.tar.Z`
	2. [[0-50-most-popular-linux-terminal-cmds-{freecodecamp}-and-more#gzip or gunzip vs tar| gzip]]
	3. `bzip2`
		- `.bz2` file
		- not archiving .. as in gzip
		- `bzcat`
	4. `zip files.zip file2 file5` {archive + compress} 2 in 1
		- `.zip`
		- unlike the 3 above .. `zip` will keep the original files
		- peak contents `unzip -l files.zip`
	- `unzip files.zip`

- [ ] https://maharatech.gov.eg/mod/feedback/complete.php?id=14360&courseid

# what i asked ITI mahara tech
مستني اليوم اللي هسمع فيه إن حضراتكم هتعموا كورس في الموضوعات دي
1. arch linux: essentials and philosophy
2. scripting with bash/zsh/fish shells
3. arch linux: the comprehensive manual and script install
4. DEs vs TWMs
5. automating the boring stuff with bash
6. ricing i3wm on arch linux
7. vim vs emacs: the great debate
8. configuring vim, neovim using vimscript and lua as your tailored IDE
9. configuring emacs as your tailored IDE
10. neovim, emacs distributions
# ubuntu resources
- books
	- ![[Pasted-image-20240705092950.png]]  ![[Pasted-image-20240705093007.png]]  ![[Pasted-image-20240705093038.png]]  ![[Pasted-image-20240705093051.png]]  ![[Pasted-image-20240705093101.png]]
- courses
	- [The Complete Ubuntu Linux Server Administration Course 2023. | Udemy](https://www.udemy.com/course/the-complete-ubuntu-linux-server-administration-course/?couponCode=KEEPLEARNING)
- [[bash-scripting-on-linux]]
