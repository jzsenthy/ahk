#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


CoordMode, Screen




; Open Chrome - Paychex login (Work Profile)
Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 3" https://paychex.centralservers.com

; This waits 1000ms (1 second) before continuing
; Then brings the chrome window to foreground
; Then presses tab, tab, enter, to log in for you if your info is saved (tab, tab is necessary if using dark mode extension)
; Reference:  https://www.autohotkey.com/docs/commands/SetTitleMatchMode.htm
WinActivate, ahk_exe chrome.exe
WinWaitActive, ahk_exe chrome.exe
Sleep 4000
Send {Tab}{Tab}

Sleep 100
Send {Enter}




Exit