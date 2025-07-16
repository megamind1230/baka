
#1
# wants and needs
- [x] bash script to alias as comp to compile current cpp file into file a binary
	- [x] solution just from vscode itself
		- `danielpinto8zz6.c-cpp-compile-run` 
			- makes it easy for c/cpp ***single*** files just to ***compileANDrun / debug***
				- my custom shortcuts are `f4/shift f4`
	- [x] simple bash line to compile a single cpp file
		- `alias com='g++ -std=c++14 main.cpp -o a && ./a'`
		- now you can from vscode do like `ctrl shift c comp` to open terminal in current file path and voila
- [ ] bash script to create new folder {named by todays date} that has a file.cpp named by problem name I give that to prompt
- [ ] use system clipboard
- [ ] yank whole file with `:%y`
- [ ] 
# json
settings.json
```json
{
    "workbench.colorTheme": "Quiet Light",
    "explorer.confirmDelete": false,
    "terminal.integrated.enableMultiLinePasteWarning": false,
    "editor.minimap.enabled": false,
    "window.zoomLevel": -1,
    //my custom
    "editor.lineNumbers": "relative",
    "vim.leader": "<Space>",
    "vim.handleKeys": {
        "<C-s>": false,//to save
        "<C-z>": false,
        "<C-d>": false,
        //"<C-p>": false, no but make file nav using leader something
        //"<C-t>": false, no .. but change find symbol fo leader something
        "<C-b>": false,//also make ctrl e trigger file tree
        "<C-c>": false
    },
    "vim.normalModeKeyBindings": [


    ],
    "vim.normalModeKeyBindingsNonRecursive": [
        
        {
            "before": [ "<C-h>" ], "after": [ "<C-w>", "h" ]
        },
        {
            "before": [ "<C-j>" ], "after": [ "<C-w>", "j" ]
        },
        {
            "before": [ "<C-k>" ], "after": [ "<C-w>", "k" ]
        },
        {
            "before": [ "<C-l>" ], "after": [ "<C-w>", "l" ]
        },
        {
            "before": [ "<Leader>", "t", "t" ], "commands": [ ":tabnew" ]
        },
        {
            "before": [ "<Leader>", "t", "n" ], "commands": [ ":tabnext" ]
        },
        {
            "before": [ "<Leader>", "t", "p" ], "commands": [ ":tabprev" ]
        },
        {
            "before": [ "<Leader>", "t", "o" ], "commands": [ ":tabo" ]
        }
        ,
        { 
            "before": [ "<Leader>", "w" ], "commands": [ "workbench.action.closeActiveEditor" ]
        },
        { 
            "before": [ "<Leader>", "`","`" ], "commands": [ "workbench.action.closeFolder" ]
        }
        
    ],
    "emmet.preferences": {

    },
    "vim.sneak": true,
    "vim.easymotion": true,
    "vim.insertModeKeyBindingsNonRecursive": [
    
        { 
            "before": ["j", "k"], "after": [ "<Esc>" ]
        }
    ],
    "editor.cursorBlinking": "smooth"
}
```