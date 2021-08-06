;Rejurhf

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; keyloger
#InstallKeybdHook

; skróty pisowni
:*:mg@::mziomek108@gmail.com
:*:re@::rejurhf108@gmail.com
:*:mo@::mziomek@outlook.com
:*:ma@::mziomek@andea.com
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

; Media Play/Pouse
RAlt & k::
  Send {Media_Play_Pause}      ;zadziałaj znakiem spacji laptop
Return

; run Cmder
RAlt & j::
  Run, wt new-tab -p "Ubuntu-20.04" `; split-pane -p "Command Prompt" -V
Return

; volume management
LAlt & WheelUp::
  Send {Volume_Up}
Return

LAlt & WheelDown::
  Send {Volume_Down}
Return

; Remap qwertz left \ button
SC056::LShift

CapsLock::
  Send {Escape}
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
