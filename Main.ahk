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

; Move between desktops using simpler shortcut
; LAlt + w instead of LControl + LWin + Right
LAlt & w::
   Send #^{Right}
Return

; LAlt + q instead of LControl + LWin + Left
LAlt & q::
   Send #^{Left}
Return

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

; run Cmder
RAlt & j::
  Run, D:\Programy\cmder\Cmder.exe
Return

; volume management
LAlt & WheelUp::
  Send {Volume_Up}
Return

LAlt & WheelDown::
  Send {Volume_Down}
Return

; mouse butons 4 to win
XButton1::
  Send {LWin}
Return

; mouse button 5 to win + tab
XButton2::
  Send #{Tab}
Return

; mouse movement using numeric keys
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
