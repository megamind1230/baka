
```bash
# file name: new-word
#!/bin/bash

word=$(echo "" | dmenu -p "Add word: ")
meaning=$(echo "" | dmenu -p "Add meaning: ")

echo "$word | $meaning" >> /mnt/hdd/words.txt

```

then add this one line to ur .bashrc / .zshrc
```
shuf -n 1 /mnt/hdd/words.txt
```

> and it will show a new word everytime u open a terminal

## this is my version
```bash
#!/bin/bash
# Script with fuzzel
word=$(echo "" | fuzzel --dmenu --prompt="Add word: ")
meaning=$(echo "" | fuzzel --dmenu --prompt="Add meaning: ")

if [[ -n "$word" && -n "$meaning" ]]; then
    echo "$word | $meaning" >> "/mnt/hdd/words.txt"
    notify-send "Word Added" "'$word' added to dictionary"
fi

```