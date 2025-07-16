- [x] how to save my tmux session even after turning off computer
	tmux-resurrect plugin

```bash
# Enable truecolor support
set -g default-terminal "tmux-256color"
set -ag terminal-overrides ",xterm-256color:RGB"
set -as terminal-overrides ',*:Tc'  # Older tmux versions may need this instead

# bind ctrl space as leader
unbind C-Space
set -g prefix C-Space
bind C-Space send-prefix

```