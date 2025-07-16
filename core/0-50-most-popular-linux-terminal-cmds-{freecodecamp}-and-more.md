#1 
> GNU/linux is not True Unix, it is ***Unix-like***

> quick recap, not detailed

[[the-linux-commands-bible-pdf]]
# combine with
[[0-know-more-about-your-linux-system-(commands)]]

# open 
`open .` > opens the pwd using the default file manager {sometimes is `xdg-open`}
# rmdir
- `rmdir` > remove/del empty dir
- [[how-to-delete-or-remove-into-a-recycle-bin-in-linux-terminal]]
- `rm` > perma del with no bin backup
	- `rm -r` > del dir + its contents
	- `rm -i` > interactive {helps you make decisions on del}
# redirections
-  {redirecting} {can create files btw}
	- stdout `pwd > somefile.txt` > `overwrite all` the content to just be pwd
		- `pwd >> somefile.txt` > `appends`
	- stderr `something_that_gives_error > file 2>&1` same as `something_that_gives_error &> file` { redirects stderr to file }
		- `something_that_gives_error 2> /dev/null` is a black hole
# cat
- can `cat` more than one file at once
	- `cat -n` > displays line numbers
# piping with |
`ls -l | wc`
# sort
- `sort` > sorts alphanumerically
	- `sort -n` > numerically
	- `sort -u` > unique {doesnt show duplicates}
# uniq
- `uniq` > removes adjacent duplicates
	- `sort something | uniq` {btw has much more in man page than `sort -u`}
		- eg: `uniq -c` > shows freq of each

# expansions
- `echo ~` > user home dir
- `$PATH` or any other environment variable expansions
- `*` > zero or more
- `?` > one single char
	- `rm *.??` > remove all files with 2 char in their extensions
- `{}`
	- `echo {a,b,c}.txt` > a.txt b.txt c.txt
	- `touch app.{js,html,css,py}` > creates all of them
	- `touch day{1..365}.md` > 365 day.md files
# diff
- [[0-diff-command]]
# find
- syntax `find <place> <filter>`
- `find . -type f -size +100k -size -1M -name '*MOC.md'`
	- any moc file of size between 100KB to 1MB
- [[find-command]]
# grep
- stands for (go regular expression and print) > finds matches
- `grep -ri "Moc" .`
	- find matches of the word moc {case-insensitive} recursively from here down
- mentioned here > [[0-regex-or-regular-expressions-MOC]]
- [[0-grep-command]]
# du
- disk usage
- `du -ah . | sort -h | tail` > list largest 10 folders in size
	- largest is below
# df
- {disk free} report
	- report file system disk space usage
- `df -h <place>` > place is optional for pwd

# history
- `history | grep 'fzf'` > display all commands in history where i used fzf in
	- `!number` > re-run one of them
# ps
- process status
- `ps` > only user-initiated
- `ps ax` > for all
	- `ps axww` > better display with wrapping
		- `ps axww | grep "Visual Studio Code"`
- `kill`
	- `kill -l` > list all signals
		- `SIGTERM` > 15 gently quit {leave time to save changes and backups if any} 
		- `SIGKILL` > 9 brutal quit 
	- `kill -9 <PID>`
- `killall <signal> <name>` allows to kill using name {not pid}
	- `killall -9 node` 
# jobs + fg + bg
- `jobs` > check for suspended {stopped/frozen} OR running processes
	- {numbered} jobs
- we suspend with `ctrl z` , kill with `ctrl c`
- `bg/fg <job number>` > run it background/foreground
- can also run in bg using `&`
	- `sudo apt upgrade -y &` > upgrade apps in bg

# gzip or gunzip vs tar
> compress vs archive
> 	compress > reduce size
> 	archive > combine multiple files into one
- `gzip or gunzip` > compress each one separately 
	- only for files
	- ***replaces*** original by default
	- compressed
	- creates a `.gz` file .. for each file
	- `gzip`
		- `gzip -kv filename` > will {keep} the original file + {verbose}
	- `gunzip` 
		- uncompress
		- `gunzip -kv compressed_file` same as `gzip -dkv compressed_file`
	- `gzcat` is the `zcat` for .gz files
- `tar` > combine/archive/collect multiple into one file 
	- {tar = Tape ARchive}
	- files and folders
	- by default ***keeps*** original as-is
	- not compressed by default
	- why use `tar` instead of `cp`?
		- first tar creates a single collection file
		- second tar saves the files as-is {even the meta data is not modified} {take a clone} .. unlike `cp` which modifies the meta data
	- `tar -cvf archive.tar file1.txt file2.txt file3.txt`
		- btw we can `cvf` without `-` .. cuz they are also funcs not only options
		- `-c` create
		- `-f` archive name is
			- by default {without using using -f} it saves on the first tape device connected to pc
			- `-f` is to specify the ***archive file name*** if we dont want to save on the first tape as default
		- not compressed
		- `-v` verbose
			- helps determine whether it finished correctly or if it has frozen
	- to view content > `tar -tf archive.tar`
		- `-t` list members/table of contents
	- to unarchive all> `tar -xvf archive.tar`
		- `-x` extract
		- `-C path` or `--directory path`
			- specifiy extraction path
	- to unarchive some> `tar -xvf archive.tar file1 file2`
	- ***2 ways to compress tar***
		- using `gzip`
			- `gzip -kv archive.tar` > gives `archive.tar.gz`
			- to go back to original singles -> uncompress then unarchive
				- `gzip -dkv archive.tar.gz` then `tar -xf archive.tar` now you have the single files
		- {better} using `-z` option with tar
			- `tar -czf archive.tar.gz file1.txt file2.txt file3.txt`
			- to go back to original singles > just `tar -xf archive.tar.gz`

# alias
- `alias something='whatever_command'` no spaces
- to save it in all sessions
	- save in `~/.bashrc` {if you use bash}
	- reload the shell either by
		- opening a new one {new tab/window}
		- `source ~/.bashrc` > to compile it somehow
- ***quotes***
	- `alias lsThat="ls $PWD"` > double quotes are resolved at definition time
		- if it lists the content of your Desktop .. it would be always showing that
	- `alias lsCurrent='ls $PWD'` > single quotes are resolve at invocation time
		- lists according to the place you are in
# [[xargs-command]]
> `xargs` helps create aguements for some commands that you cannot directly use `pipe or |` with
- `cat a.txt | xargs rm` > if `a.txt` has names of files eg: `b{1,2,3}.txt` they would by removed all
- `find . -size +1M | xargs ls -lah` > lists all files here that are of size more than 1MB
# ln
> somehow like pointers
> changes in one of them > affects the other
- ***hardlink***
	- both point to same memory place .. so deleting one {does not affect the other}
	- `ln originalFile harlinkFile`
- softlink / symbolic-link / ***symlink***
	- shows some arrow in terminal
	- symlink points to the original ..so deleting original {leaves the symlink invalid}
	- `ln -s originalFile harlinkFile` {`-s` for symbolic or soft}
# who
> helps admins to know how many users are current on
- also shows the number of terminals opened
# su
- switch user
- `su username` > enter the correct password
- `ctrl d` or `exit` > to logout
# sudo

> [!NOTE] 
> not all users can run `sudo`
  only the admin allowed ones
# passwd
- `passwd` changes your password
- `sudo passwd someUsername` change pw of others
# [[0-linux-permissions-MOC]]
## chown
- [[chown-command]]
### permissions table

| character | effect on file           | effect on folder                              |     |
| --------- | ------------------------ | --------------------------------------------- | --- |
| r         | open and read            | contents can be listed                        |     |
| w         | modify content           | modify(create new files/folder/rename/delete) |     |
| x         | execute/run as a program | you can `cd` into it                          |     |
| -         | none                     | none                                          |     |
##  [[chmod-command]]

# env
list all environment variables

# paste
`ls | paste -s | tee f.txt` tee shows output of ls on screen + same output is redirected to f.txt
	`paste -s` is just for formatting .. converts newlines to tabe
# shutdown
`sudo shutdown -h now` halt = power off
`sudo shutdown -r +2` reboot after 2min

# umask
changes the default permission-set of newly created files in this current session

# uname
`uname -a` know your kernel (name - version - release)
# ssh
 lets pretend that you're making a website. The company you chose to host your site tells
you that the server is located at web-servers.com on a custom port of 2020 and your account name usr1 has been
chosen to create a user on the server with SSH privileges. In this case the SSH command used would be as such
`ssh -p 2020 usr1@web-servers.com`
