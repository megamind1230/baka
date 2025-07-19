# focus windows
super {h/j/k/l} / {arrow}

# change workspace
super {1..9,0}
super {tab, shift tab} .. not empty
super ctrl shift {j/k} / {arrow} .. not empty
alt {tab, shift tab} .. with rofi

# window to workspace
super shift {1..9,0}

# reload
super ctrl shift s
    sxhkd
super shift r
    qtile

# random
super q
    quit
super w
    web browser
super e
    thunar file manager
super shift e
    yazi
super o
    obsidian
super p
    pavu volume/sound
super d
    rofi
super f
    fullscreen
super z
    zoom
super c
    vscode
super v
    clipboard / copyq
super shift `
    change layout
super f1,f2,f3
    audacity, kdenlive, gimp

    
super {r,t,y,u,i,[ , ], \ , a, s, g, ;, ', x, b, n , m , , , . , / , }
    nothing
