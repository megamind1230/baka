#SingleInstance, Force

; replace
::sbl::sussybakalol
return
; replace
::gpp::gcc main.cpp -o a && ./a
return
::idbaka::cykagoddamnthis
return
::pwbaka::notsussybakalol0
return
::bakaeune::NotSussyBakaLOL
return

::mydc::https://discord.gg/QBKyY3X5HY
return

; ^ = ctrl , # = super , ! = alt , + = shift


; obsidian
#o::
Run, C:\Users\dt\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Obsidian.lnk
return

; anki
#a::
Run, C:\Users\dt\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Anki.lnk
return


;firefox browser
#w::
;Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk
Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Brave.lnk
;Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Firefox.lnk
return

;;launchers
;; this is flow_launcher , the other PowerToys is set from its settings as {super shfit d}
;#d::
;Run, C:\Users\hassa\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Flow Launcher\Flow Launcher
;return


;flameshot ?? baka
;#+s::
;Run, C:\Users\dt\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Flameshot\Flameshot.lnk gui
;return

; reload script
#+r::Reload

; edit script
#+c::
;Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vim 9.1\gVim.lnk C:\Users\dt\Desktop\init.ahk
Run, neovide D:\my-dotfiles\init.ahk
return

; fast notes
#+o::
;Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vim 9.1\gVim.lnk D:\things-in-my-mind.txt
Run, neovide D:\my-dotfiles\things-in-my-mind.txt
return
#+i::
;Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vim 9.1\gVim.lnk D:\things-in-my-mind.txt
Run, neovide D:\my-dotfiles\things-in-my-mind.txt
return

;volume controls
#!=::
Send {Volume_Up}
return
#!-::
Send {Volume_Down}
return
#!m::
Send {Volume_Mute}
return

;gvim
#+g::
;Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Vim 9.1\gVim.lnk
Run, neovide
return

#+n::
Run, neovide C:\Users\dt\AppData\Local\nvim
return


; Hotkeys to kill the current active window
; Windows and C closes active window
#q:: 
WinGetTitle, Title, A
PostMessage, 0x112, 0xF060,,, %Title%
return

#!q::!F4
;!q::!F4
; windows terminal
#Enter::
Run , wt
return

!F1::Send #^{Left}
!F2::Send #^{Right}
#^Up:: #^Left
#^Down:: #^Right

#+e::
Run, emacsclient -c -n
return


#+w::
Run, brave.exe https://www.youtube.com/feed/playlists
return


; Random Quote Copier
; Hotkey: ctrl alt q(you can change this)
^!q::
;::bbb::
    ; Path to your quotes text file
    ; Replace with your actual file path
    quotesFile := "D:\st\obsi\vault_bank\my-dotfiles"
    
    ; Read all lines from the file
    FileRead, fileContents, %quotesFile%
    
    ; Split into an array of lines
    quotes := StrSplit(fileContents, "`n", "`r")
    
    ; Get a random index
    Random, randomIndex, 1, quotes.MaxIndex()
    
    ; Copy to clipboard
    clipboard := quotes[randomIndex]
    
    ; Optional notification
    ToolTip, Random quote copied to clipboard!
    Sleep, 1500
    ToolTip
return
