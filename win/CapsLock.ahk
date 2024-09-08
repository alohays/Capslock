#Requires AutoHotkey v2.0

; Feng Ruohang's AHK Script - CapsLock Enhancement
; Converted to AutoHotkey v2 syntax and fixed for backtick issue

; CapsLock Initializer
SetCapsLockState "AlwaysOff"

; CapsLock Switcher
CapsLock & BackSpace::  ; 백틱 대신 BackSpace 키를 사용
{
    if GetKeyState("CapsLock", "T")
        SetCapsLockState "AlwaysOff"
    else
        SetCapsLockState "AlwaysOn"
    KeyWait "BackSpace"
}

; CapsLock + Space as Window + Space
CapsLock & Space::Send "#{Space}"

; CapsLock Escaper
CapsLock::Send "{Esc}"

; CapsLock + Esc as backtick
CapsLock & Esc::Send "``"

; CapsLock Direction Navigator
; CapsLock & h:: Left Arrow key handling with Shift, Ctrl, and Alt
CapsLock & h::
{
    if !GetKeyState("Control", "P") ; Ctrl not pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "{Left}"
            else
                Send "+{Left}" ; Shift + Left
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "!{Left}" ; Alt + Left
            else
                Send "+!{Left}" ; Shift + Alt + Left
        }
    }
    else ; Ctrl pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^{Left}" ; Ctrl + Left
            else
                Send "+^{Left}" ; Shift + Ctrl + Left
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^!{Left}" ; Ctrl + Alt + Left
            else
                Send "+^!{Left}" ; Shift + Ctrl + Alt + Left
        }
    }
}

; CapsLock & j:: Down Arrow key handling with Shift, Ctrl, and Alt
CapsLock & j::
{
    if !GetKeyState("Control", "P") ; Ctrl not pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "{Down}"
            else
                Send "+{Down}" ; Shift + Down
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "!{Down}" ; Alt + Down
            else
                Send "+!{Down}" ; Shift + Alt + Down
        }
    }
    else ; Ctrl pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^{Down}" ; Ctrl + Down
            else
                Send "+^{Down}" ; Shift + Ctrl + Down
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^!{Down}" ; Ctrl + Alt + Down
            else
                Send "+^!{Down}" ; Shift + Ctrl + Alt + Down
        }
    }
}

; CapsLock & k:: Up Arrow key handling with Shift, Ctrl, and Alt
CapsLock & k::
{
    if !GetKeyState("Control", "P") ; Ctrl not pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "{Up}"
            else
                Send "+{Up}" ; Shift + Up
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "!{Up}" ; Alt + Up
            else
                Send "+!{Up}" ; Shift + Alt + Up
        }
    }
    else ; Ctrl pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^{Up}" ; Ctrl + Up
            else
                Send "+^{Up}" ; Shift + Ctrl + Up
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^!{Up}" ; Ctrl + Alt + Up
            else
                Send "+^!{Up}" ; Shift + Ctrl + Alt + Up
        }
    }
}

; CapsLock & l:: Right Arrow key handling with Shift, Ctrl, and Alt
CapsLock & l::
{
    if !GetKeyState("Control", "P") ; Ctrl not pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "{Right}"
            else
                Send "+{Right}" ; Shift + Right
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "!{Right}" ; Alt + Right
            else
                Send "+!{Right}" ; Shift + Alt + Right
        }
    }
    else ; Ctrl pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^{Right}" ; Ctrl + Right
            else
                Send "+^{Right}" ; Shift + Ctrl + Right
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^!{Right}" ; Ctrl + Alt + Right
            else
                Send "+^!{Right}" ; Shift + Ctrl + Alt + Right
        }
    }
}

; CapsLock Home/End Navigator
; CapsLock & 0:: Home key handling with Shift, Ctrl, and Alt
CapsLock & 0::
{
    if !GetKeyState("Control", "P") ; Ctrl not pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "{Home}"
            else
                Send "+{Home}" ; Shift + Home
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "!{Home}" ; Alt + Home
            else
                Send "+!{Home}" ; Shift + Alt + Home
        }
    }
    else ; Ctrl pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^{Home}" ; Ctrl + Home
            else
                Send "+^{Home}" ; Shift + Ctrl + Home
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^!{Home}" ; Ctrl + Alt + Home
            else
                Send "+^!{Home}" ; Shift + Ctrl + Alt + Home
        }
    }
}

; CapsLock & 4:: End key handling with Shift, Ctrl, and Alt
CapsLock & 4::
{
    if !GetKeyState("Control", "P") ; Ctrl not pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "{End}"
            else
                Send "+{End}" ; Shift + End
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "!{End}" ; Alt + End
            else
                Send "+!{End}" ; Shift + Alt + End
        }
    }
    else ; Ctrl pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^{End}" ; Ctrl + End
            else
                Send "+^{End}" ; Shift + Ctrl + End
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^!{End}" ; Ctrl + Alt + End
            else
                Send "+^!{End}" ; Shift + Ctrl + Alt + End
        }
    }
}

; CapsLock & i:: Home key handling with Shift, Ctrl, and Alt
CapsLock & i::
{
    if !GetKeyState("Control", "P") ; Ctrl not pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "{Home}"
            else
                Send "+{Home}" ; Shift + Home
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "!{Home}" ; Alt + Home
            else
                Send "+!{Home}" ; Shift + Alt + Home
        }
    }
    else ; Ctrl pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^{Home}" ; Ctrl + Home
            else
                Send "+^{Home}" ; Shift + Ctrl + Home
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^!{Home}" ; Ctrl + Alt + Home
            else
                Send "+^!{Home}" ; Shift + Ctrl + Alt + Home
        }
    }
}

; CapsLock & o:: End key handling with Shift, Ctrl, and Alt
CapsLock & o::
{
    if !GetKeyState("Control", "P") ; Ctrl not pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "{End}"
            else
                Send "+{End}" ; Shift + End
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "!{End}" ; Alt + End
            else
                Send "+!{End}" ; Shift + Alt + End
        }
    }
    else ; Ctrl pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^{End}" ; Ctrl + End
            else
                Send "+^{End}" ; Shift + Ctrl + End
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^!{End}" ; Ctrl + Alt + End
            else
                Send "+^!{End}" ; Shift + Ctrl + Alt + End
        }
    }
}

; CapsLock & u:: PgUp key handling with Shift, Ctrl, and Alt
CapsLock & u::
{
    if !GetKeyState("Control", "P") ; Ctrl not pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "{PgUp}"
            else
                Send "+{PgUp}" ; Shift + PgUp
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "!{PgUp}" ; Alt + PgUp
            else
                Send "+!{PgUp}" ; Shift + Alt + PgUp
        }
    }
    else ; Ctrl pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^{PgUp}" ; Ctrl + PgUp
            else
                Send "+^{PgUp}" ; Shift + Ctrl + PgUp
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^!{PgUp}" ; Ctrl + Alt + PgUp
            else
                Send "+^!{PgUp}" ; Shift + Ctrl + Alt + PgUp
        }
    }
}

; CapsLock & p:: PgDn key handling with Shift, Ctrl, and Alt
CapsLock & p::
{
    if !GetKeyState("Control", "P") ; Ctrl not pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "{PgDn}"
            else
                Send "+{PgDn}" ; Shift + PgDn
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "!{PgDn}" ; Alt + PgDn
            else
                Send "+!{PgDn}" ; Shift + Alt + PgDn
        }
    }
    else ; Ctrl pressed
    {
        if !GetKeyState("Alt", "P") ; Alt not pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^{PgDn}" ; Ctrl + PgDn
            else
                Send "+^{PgDn}" ; Shift + Ctrl + PgDn
        }
        else ; Alt pressed
        {
            if !GetKeyState("Shift", "P") ; Shift not pressed
                Send "^!{PgDn}" ; Ctrl + Alt + PgDn
            else
                Send "+^!{PgDn}" ; Shift + Ctrl + Alt + PgDn
        }
    }
}

; CapsLock Mouse Controller
CapsLock & Up::MouseMove 0, -10, 0, "R"
CapsLock & Down::MouseMove 0, 10, 0, "R"
CapsLock & Left::MouseMove -10, 0, 0, "R"
CapsLock & Right::MouseMove 10, 0, 0, "R"

CapsLock & Enter::
{
    Click "Down"
    KeyWait "Enter"
    Click "Up"
}

; Make CapsLcock + \ as mouse right Click
CapsLock & \::
{
    Click "Right Down"
    KeyWait "\"
    Click "Right Up"
}


; CapsLock Deletor
CapsLock & ,::Send "{Del}"
CapsLock & .::Send "^{Del}"
CapsLock & m::Send "{BS}"
CapsLock & n::Send "^{BS}"

; CapsLock Editor
CapsLock & z::Send "^z"
CapsLock & x::Send "^x"
CapsLock & c::Send "^c"
CapsLock & v::Send "^v"
CapsLock & a::Send "^a"
CapsLock & s::Send "^s"
CapsLock & d::Send "^d"
CapsLock & f::Send "^f"
CapsLock & w::Send "^{Right}"
CapsLock & b::Send "^{Left}"

; CapsLock Media Controller
CapsLock & F1::Send "{Volume_Mute}"
CapsLock & F2::Send "{Volume_Down}"
CapsLock & F3::Send "{Volume_Up}"
CapsLock & F4::Send "{Media_Play_Pause}"
CapsLock & F5::Send "{Media_Next}"
CapsLock & F6::Send "{Media_Stop}"


CapsLock & q::
{
    if !GetKeyState("Alt", "P")
        Send "^w"
    else
        Send "!{F4}"
}


CapsLock & g::Send "{AppsKey}"

; CapsLock Self Defined Area
CapsLock & e::Run "https://google.com/"
CapsLock & r::Run "Powershell"
CapsLock & t::Run "C:\Program Files (x86)\Notepad++\notepad++.exe"

; CapsLock Char Mapping
