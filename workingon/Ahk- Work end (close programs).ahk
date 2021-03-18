#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



Process,Close,Teams.exe
Process,Close,OUTLOOK.EXE
Process,Close,ObjectDock.exe
Process,Close,Dock64.exe
Process,Close,kitty_portable.exe
Process,Close,DevManView.exe
