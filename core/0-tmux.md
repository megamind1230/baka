> sessions > windows > panes
   leader = ctrl b
# sessions
```bash
leader ? # list shortcuts
# Start a new session ORRRRRR attach to an existing session named mysession
tmux new-session -A -s mysession 

leader $ # rename session
leader s # list session
leader w # preview {windows & sessions}

leader : kill-session # kill session
```

# windows
```bash
leader c # create window
leader , # rename window
leader & # close window
leader p # prev window
leader n # next window
leader 0:9  # specific window
```

# panes / splits
```bash
leader \" # horiz split
leader % # vert split
leader space # change layouts
leader q # show number on panes
leader ! # pane into window
leader x # close pane
```

# other modes
```bash
leader [ # copy mode
space # select
enter # copy
leader ] # paste
leader : # cmd mode
```

# my custom
```bash
# 3 windows
tmux new-session -s baka 
tmux new-window -t baka:1 
tmux new-window -t baka:2 
tmux new-window -t baka:3 
tmux a -t baka

# attach
tmux a -t baka

# deattach
leader d

```

# [[0-configure-tmux]]
