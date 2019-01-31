;Rejurhf

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; keyloger
#InstallKeybdHook

; skróty pisowni
:*:mz@::mziomek108@gmail.com
:*:re@::rejurhf108@gmail.com
::ty::Ty
::ci::Ci


; NumpadDot to Dot
NumpadDot::.
  Return

; VLC Play/Pouse
Media_Play_Pause::
   SetTitleMatchMode, 2
   IfWinExist VLC media player
      WinGetTitle, VLC
   ControlSend,, {Space}, %VLC%             ;zadziałaj znakiem spacji klawiatura
Return

; VLC Next song
Media_Next::
  SetTitleMatchMode, 2
  IfWinExist VLC media player
    WinGetTitle, VLC
  ControlSend,, {n}, %VLC%             ;zadziałaj znakiem spacji klawiatura
Return

; VLC Previous song
Media_Prev::
  SetTitleMatchMode, 2
  IfWinExist VLC media player
    WinGetTitle, VLC
  ControlSend,, {p}, %VLC%             ;zadziałaj znakiem spacji klawiatura
Return

; VLC Play/Pouse
RAlt & m::
   SetTitleMatchMode, 2
   IfWinExist VLC media player
      WinGetTitle, VLC
   ControlSend,, {Space}, %VLC%             ;zadziałaj znakiem spacji laptop
Return

; VLC Next
RAlt & .::
   SetTitleMatchMode, 2
   IfWinExist VLC media player
      WinGetTitle, VLC
   ControlSend,, {o}, %VLC%             ;zadziałaj znakiem 'o' laptop
Return

; VLC Back
RAlt & ,::
   SetTitleMatchMode, 2
   IfWinExist VLC media player
      WinGetTitle, VLC
   ControlSend,, {p}, %VLC%             ;zadziałaj znakiem 'p' laptop
Return

; run Cmder
RAlt & j::
  Run, D:\Programy\cmder\Cmder.exe
Return

; zarządzanie głośnością
LAlt & WheelUp::
  Send {Volume_Up}
Return

LAlt & WheelDown::
  Send {Volume_Down}
Return

; Uruchamia kalkulator
LControl & NumpadEnter::
   Run, calc
Return

; Uruchamia główny katalog
NumpadHome::
   Run, Explorer E:\
Return

; Poruszanie myszką
NumpadDown::MouseMove,   0,  15, 1, R  Return
NumpadLeft::MouseMove, -15,   0, 1, R  Return
NumpadRight::MouseMove, 15,   0, 1, R  Return
NumpadUp::MouseMove,     0, -15, 1, R  Return
NumpadClear::
   MouseClick, Left
Return
NumpadPgup::
   MouseClick, Right
Return

; test działąnia w programie
#IfWinActive ahk_class Notepad
   #space::
      MsgBox, You pressed Win+Spacebar in Notepad.
Return
