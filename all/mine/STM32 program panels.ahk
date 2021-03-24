#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


CoordMode, Screen




; Launches this script when you press Ctrl+Numpad7
; Reference:  https://www.autohotkey.com/docs/Hotkeys.htm
; Reference:  https://www.autohotkey.com/docs/KeyList.htm
^Numpad7::


Sleep 200

; Click Connect
Click, 1850, 128

; Wait
Sleep 1500



; Click Start Programming
Click, 860, 340

; Wait
Sleep 12000



; Clear the 3 dialog boxes
Send {Enter}
Sleep 200
Send {Enter}
Sleep 200
Send {Enter}

; Wait
Sleep 200



; Click Disconnect
Click, 1850, 128


; Display alert box that the panel is done (auto-closes after 6 seconds)
MsgBox, 0, Panel done, Panel done. Connect next panel., 6



Return

Exit