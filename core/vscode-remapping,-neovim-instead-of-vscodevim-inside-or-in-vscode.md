#1

| keys    | (1)add<br>(2)switch<br>(3)remove | mode   | where<br>a:keybindings<br>b:settings<br>c:lua | remapped to become(0)                       | vscode func (1) | old func(2)                     | new func(3)                     | my pick |
| ------- | -------------------------------- | ------ | --------------------------------------------- | ------------------------------------------- | --------------- | ------------------------------- | ------------------------------- | ------- |
| `jj`    | 1                                | insert | a                                             | `esc`<br><br>vscode-neovim.compositeEscape1 | -               | -                               | -                               | 0       |
| `p`     | 2                                | visual | c                                             | `P`<br>{so i swapped p and P}               | -               | paste and yank overwritten text | just paste                      | 3       |
| `P`     | 2                                | visual | c                                             | `p`                                         | -               | just paste                      | paste and yank overwritten text | 3       |
| `esc`   | 1                                | normal | c                                             | `:nohlsearch`                               | -               | -                               | clear search highlighting       | 3       |
| `space` | 1                                | all    | c                                             | `leader` or<br>`vim.g.mapleader`            | -               | -                               | leader                          | 3       |
|         |                                  |        |                                               |                                             |                 |                                 |                                 |         |


- path to init.lua
	- `C:\Users\hassa\AppData\Local\nvim`