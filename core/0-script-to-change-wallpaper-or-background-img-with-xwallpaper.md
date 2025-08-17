
```bash
#!bin/sh
dir=$path/to/img/dir
cmd="xwallpaper --zoom "
rando=$(ls $dir | sort -R | tail -1)

$cmd "$dir/$rando"
```