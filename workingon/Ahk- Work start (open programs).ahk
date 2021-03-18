#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



CoordMode, Screen


; Help:
; To get the address for a different program to launch, right-click on a taskbar icon, right-click on the program name, click Properties, then ctrl+c
; Put  Run,  before what you paste in.  (or  RunWait,  to wait for it to open and close before continuing)
; Reference:  https://www.autohotkey.com/docs/commands/Run.htm






; Open Outlook
; Reference:  https://www.autohotkey.com/docs/commands/WinExist.htm
; Reference:  https://www.autohotkey.com/docs/misc/WinTitle.htm#ahk_exe  (include quotes)
if not WinExist("ahk_exe OUTLOOK.EXE")
{
    Run, C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE
}



; Open Teams
; Reference for retrieving entironment variables:  https://www.autohotkey.com/docs/Concepts.htm#environment-variables
EnvGet, LOCALAPPDATA, LOCALAPPDATA
Run, %LOCALAPPDATA%\Microsoft\Teams\Update.exe --processStart "Teams.exe"



; Open ObjectDock
if not WinExist("ahk_exe ObjectDock.exe")
{
Run, C:\Program Files (x86)\Stardock\ObjectDock\ObjectDock.exe
}



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