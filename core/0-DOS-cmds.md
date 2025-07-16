#1 
commands `cmds` for windows operating systems
> tbh .. the cmds are weird AF
- `cd` 
  ![[Pasted-image-20221213112346.png|350]] somehow like pwd here
	- `cd/` root 
	  ![[Pasted-image-20221213112407.png|350]]
- `rd` remove an empty ***dir***
	- `rd /s` > not empty
	- `del` delete/remove a ***file***
- `copy con fileName.txt` > like saying ***copy what amma type into this file***
	- end typing with `ctrl z`
	  ![[Pasted-image-20221213112511.png|350]]
	- `type fileName.txt` > print content {like cat in linux} 
	  ![[Pasted-image-20221213112604.png|350]]
- `copy fileName.txt path` to copy 
  ![[Pasted-image-20221213112641.png|350]]
- `move fileName.txt path` to cut 
	  ![[Pasted-image-20221213112723.png|350]]
- `F7` shows cmd history
- `ren old new` > rename
- hide / unhide folders with `attrib`
  ![[Pasted-image-20221213112813.png|350]]
- system version `ver` 
  ![[Pasted-image-20221213112856.png|350]]
- go to another partition 
  ![[Pasted-image-20221213112931.png|350]]
- how to run more than a command at once ?
	- can use a batch file `.bat` ![[Pasted-image-20221213114112.png|350]]
- restart to system bios
	- `shutdown /r /fw /f /t 0`
- ip addr + mac addr+ gateway 
	- `ipconfig /all`
		-  `| findstr something` pretty similar to [[0-grep-command|grep]]
	- copy to clipboard with `| clip`
	- only get mac addr
		- `getmac /v`
- default apps for specific extensions
	- `assoc`
	- also can reassign `assoc .mp4=VLC.vlc`
- [ ] pdf of coffee website about powershell ?