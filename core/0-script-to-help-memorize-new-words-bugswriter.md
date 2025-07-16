
```bash
# file name: new-word
#!/bin/bash

word=$(echo "" | dmenu -p "Add word: ")
meaning=$(echo "" | dmenu -p "Add meaning: ")

echo "$word | $meaning" >> ~/vocabs.txt

```

then add this one line to ur .bashrc / .zshrc
```
shuf -n 1 ~/vocabs.txt
```

> and it will show a new word everytime u open a terminal