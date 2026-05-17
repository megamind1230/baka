* TODO fd-rg-fzf
  [2026-01-24 Sat 19:05]
> there is also `fzf-tmux` but you must be first inside a tmux session for it to run 

```bash
fd 
  finds files/folder by default { not showing hidden files also by default} with the name X
  fd config # files/folders named config
  fd -e mp4 # files/folders with extension .mp4
  fd --hidden --exclude .git --type f  # exclude a folder
  fd -t d src # only dirs named src
  fd '.jpg$' | xargs rm # remove all .jpg

rg
  finds files containing the text X
  rg "todo" -i # search files with todo inside {case insensitive}
  rg "TODO" -t cs
  rg "todo" -l # only show file names

fzf > interactive picker list
  fzf --preview 'bat --style=numbers --color=always {}'
    fzf --preview 'sed -n "1,200p" {}'

can i script/func/alias this to be generalized
  vim $(rg -l "TODO" | fzf)
  $(history | fzf | sed 's/^[ ]*[0-9]*[ ]*//')

```

# aliases i did myself

```bash
# find files + show hidden + ignore .git + open in nvim
  # to find files by name + open in neovim asap in current dir
alias fnv='nvim $(fd --hidden --exclude .git --type f | fzf --height=~30% --layout=default --border=double)'
  # to find files by content + open in neovim asap in current dir
alias rgnv='nvim $(rg "$1" | fzf --height=~30% --layout=default --border=double | cut -d : -f1)'

```