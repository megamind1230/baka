#todo
> merge this
# know more about your system
- [ ] `uptime` > how much the machine been opened (hours don't represent session hours i think)
- `free` > free space available in RAM
- [[fdisk-command|sudo fdisk -l]]
- `lsblk` > shows the tree of partitions
- `ip a` > gives ip and mac address

# linux commands
- [[exa-command]] better than ls
- [[bat-command]] better than cat
- [[rip-grep-or-rg-command|ripgrep]] word searcher + uses regex
- [[fzf-or-fuzzy-finder]] approx file name searcher
- [[zoxide-command]] remembers/helps with paths 


# others
- [x] `uname -r`
	- Kernel version
- [x] `apt list --installed | wc -l`  on debian based
	- list installed
		- and count them
	- [x] `snap list`
- [x] `nmcli c` or `nmcli d` network manager cli
	- what type of internet your device have + gives your wifi router name
- [x] `ip a`
	- under wlp3s0 > find your MAC address