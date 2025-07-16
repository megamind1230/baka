#1 

```bash
file=$(find $HOME -type f | dmenu -i l 25)
curl -F "file=@$file" 0x0.st | xclip -selection c
notify-send "file sharable link .. is now on clipboard"
```


> [!NOTE] 0x0.st
>  can shorten urls
```
curl -F "shorten=url" 0x0.st
```
>  

> 512MB max
