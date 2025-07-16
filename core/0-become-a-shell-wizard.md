#1 
> ref
- `less` better than `cat`
	- it allows you to search in the vim way
- learn [[rip-grep-or-rg-command]]
- [[find-command|find]] vs [[fd-commad]] vs [[fzf-or-fuzzy-finder]]
- learn [[0-sed-command]] , [[0-awk-command]]
- `compgen -c | less` > almost evey single command in the system
	- `compgen -c | fzf | xargs tldr` > on-demand simple manual for any command you want
- yet another way to list the biggest 10 {actually 9} dir/files in the pwd
	- `du -ah . | sort -hr | head`
- `fc` > format cmd
	- edit last cmd .. in ur default editor
# `bash` shell shortcuts
- `ctrl c` > kill active process
- `ctrl d` > exit shell {terminal}
- `ctrl l` > clear the view in shell
- `ctrl z` > send to run in bg
- `ctrl a/e` > start/end of line
- `ctrl u/k` > delete all before/after curson in the current line
- `ctrl f/b` > move one char forward/backward
- `alt f/b` > move one word forward/backward
- `!!` > run last command
- `!<cmd>` > run the closest prev matching command
- `ctrl x e` > edit this current long command in your editor #how-to-use
