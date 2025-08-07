`xorg`
> first `man sxiv`

# key-handler with `ctrl x`
`ctrl x` is a prefix for cmds

path of script `~/.config/sxiv/exec/key-handler`

```bash
#!/bin/sh
while read file
do
	case "$1" in
		"w") setbg $file ;; # ctrl x w .. sets img to bg
		"c") cat $file | xclip -sel -t img/png ;; # copy
		"r") covert $file -rotate 90 /tmp/out.jpg ;; # rotate
		"d") mv $file ~/.Trash ;; # delete to trash
	esac
done
```