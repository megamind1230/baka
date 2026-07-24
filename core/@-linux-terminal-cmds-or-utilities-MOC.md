# links
- [ ] [Advanced Bash Scripting Tutorial - YouTube](https://www.youtube.com/watch?v=emhouufDnB4&ab_channel=CybersecurityShandy)
- [ ] [Bash Scripting Tutorial for Beginners - YouTube](https://www.youtube.com/watch?v=tK9Oc6AEnR4&ab_channel=freeCodeCamp.org)
- [ ] [Complete Shell Scripting Tutorials - YouTube](https://www.youtube.com/playlist?list=PL2qzCKTbjutJRM7K_hhNyvf8sfGCLklXw)
- [ ] [Bash Scripting and Shell Programming Course Linux Command Line | Udemy](https://www.udemy.com/course/bash-scripting/?couponCode=KEEPLEARNING)
- [ ] [Linux: Bash Shell and Scripts Online Class | LinkedIn Learning, formerly Lynda.com](https://www.linkedin.com/learning/linux-bash-shell-and-scripts)
# not done
- [ ] [[pet-a-toml-snippet-manager-in-golang]]
- [ ] [[imagemagic-cmd]]
- [ ] [[curl-command]]
- [ ] [[tmate-instant-terminal-sharing]]
- [ ] [[manage-your-dotfiles-with-makefile]]
- [ ] [[0-manage-your-dotfiles-with-gnu-stow]] 
- [ ] [[working-with-file-contents]]
- [ ] [[xdotools]]
- [ ] [[why-zsh-and-not-bash]]
- [ ] [[chown-command]]
- [ ] [[chmod-command]]
- [ ] [[dd-cmd]]
- [ ] [[xargs-command]]
- [ ] [[export-command-and-how-to-add-script-to-path]]
- [ ] [[visudo-command]]
- [ ] [[chroot-command]]
- [ ] [[how-to-force-terminal-to-swallow]]
- [ ] [[ffmpeg]]
- [ ] `convert` by black magick , ascii image converter
- [ ] [[the-linux-commands-bible-pdf]]
- [ ] [[0-know-more-about-your-linux-system-some-system-cmds]]
# done
- [x] [[core/0-fd-and-find-and-rg-and-fzf-commads|0-fd-and-find-and-rg-and-fzf-commads]]
- [x] [[intro-to-bash-scripting-basics-and-arrays-and-loops]]
- [x] wget
	- [x] [wget Cheat Sheet : Command in Line](https://www.commandinline.com/cheat-sheet/wget/)
	- `wget -i filelist.txt`
		- All files in filelist.txt are being downloaded
	- `wget -c URL
		- continue downloading if it was interrupted
- [x] alternative screen `tput smcup; some cmd; sleep 3; tput rmcup`
- [x] `xorg-xkill` package to kill process
- [x] [[0-linux-manpages-moc]]
- [x] [[@-nvim-moc]]
- [x] [[0-zathura-the-vimlike-modal-and-modular-pdf-viewer]]
- [x] [[0-sed-command]]
- [x] [[0-nano-shortcuts]]
- [x] [[0-the-awk-command]]
- [x] [[0-use-groff-and-zathura-to-make-ur-minimal-plaine-clean-cv-or-resume]]
- [x] [[0-become-a-shell-wizard]]
- [x] [[0-know-more-about-your-linux-system-some-system-cmds]]
- [x] [[0-50-most-popular-linux-terminal-cmds-freecodecamp-and-more]]
- [x] [[intro-to-bash-scripting-basics-and-arrays-and-loops]]
- [x] [[0-grep-command]]
- [x] [[0-linux-manpages-moc]]
- [x] [[0-user-and-group-management]]
- [x] [[0-diff-command]]
- [x] [[0-sort-cmd]]
- [x] [[0-shred-instead-of-rm]]
- [x] [[0-convert-pptx-into-pdf-and-merge-pdfs-faster-linux]]
- [x] [[0-script-to-share-small-local-file-the-linux-way-0x0]]
- [x] [[0-what-is-crontab-or-cronjob-in-bash]]
- [x] [[0-tmux]]
- [x] [[0-sxiv-image-viewer-not-editor]]
- [x] [[0-commands-that-will-change-the-way-you-use-linux-forever]]
- [x] [[0-fzf-or-fuzzy-finder]]
- [x] how-to-cat-a-specific-file-i-chose-with-fzf
	- `cat $(\ls | grep '.org' | fzf)`
- [x] `sudo fdisk -l` gpt or mbr
	- [x] `cfdisk` better than just `fdisk`
- [x] `bat` better than `cat`
- [x] `exa` {better than `ls`}
- [x] `z` zoxide remembers paths {better than `cd` with long paths}
- [x] `uptime` > how much the machine been opened
- [x] `free` > free space available in RAM
- [x] `ip a` > gives ip and mac address
- [x] `lsblk` > shows the tree of partitions
	- [x] blkid > also show the uuid
- [x] `uname -r`
	- Kernel version
- [x] `apt list --installed | wc -l`  on debian based - list installed
	- and count them
	- [x] also `snap list`
- [x] `sudo chmod +x myscript.sh` > executable
	we ignore the `.sh` if the shebang inside is correctly representing bash
- [x] variables set not in bashrc are tied to only that session
- [x] "" vs ''
```bash
echo "hello $myname_var" #prints name
echo 'hello $myname_var' #printed as-is
```

- [x] `file_var=$(ls)` saves content of ls inside {subcmd}
- [x] `env` > lists environment variables
- [x] `touch {a,b,c}` >  creates a,b,c files
- [x] true in bash is `0`
- [x] how-to-delete-or-remove-into-a-recycle-bin-in-linux-terminal
	not built-in
	but can install packages like `trash-cli` to delete them into `~/.local/share/Trash/`
- [x] `ncdu` ,  cli app for linux (disk usage/ analyzer)
	- [x] `dust` - [x] `du` - [x] `df`
- [x] `tree`
	- `tree -a -L 3 -I .git` lists all files and dirs, but up to 3 levels, ignoring `.git` folder