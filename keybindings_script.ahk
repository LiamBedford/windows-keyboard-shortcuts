#Requires AutoHotkey v2.0
#SingleInstance Force
;add shortcut to "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"

;=========================================================================================================================================
;Keyboard Remaps
;=========================================================================================================================================

;Set Caps Lock to always off and then remap it to Esc for Vim purposes
SetCapsLockState "AlwaysOff"
CapsLock::Esc

;Set Num Lock to always on
SetNumLockState "AlwaysOn"
NumLock::
{
   Send("{Alt down}")
    while GetKeyState("NumLock", "P")
    {
        Send("{Tab}")
        Sleep(300)  ; Adjust delay for cycling speed
    }
    Send("{Alt up}") 
}

;Remap Windows+q to alt+F4
LAlt & q::WinClose "A"

;Remap right_alt+v to open VS Code
RAlt & v::Run("path to VS Code")

;Remap right_alt+t to open Terminal
RAlt & t::Run("path to windows terminal")

;Remap right_alt+n to open NordVPN
RAlt & n::Run("path to NordVPN")

;=========================================================================================================================================
;Vim Keybindings Global
;=========================================================================================================================================

LAlt & h::Send("{Left}")
LAlt & j::Send("{Down}")
LAlt & k::Send("{Up}")
LAlt & l::Send("{Right}")

;=========================================================================================================================================
;Browser Remaps
;=========================================================================================================================================

Shift & XButton1::Send("{Shift down}{Ctrl down}{n down}{Shift up}{Ctrl up}{n up}") ;New incognito window
Shift & XButton2::Send("{Ctrl down}{n down}{Ctrl up}{n up}") ;New window
LAlt & Numpad0::Run("add url to Jira") ;Open personal Jira

;=========================================================================================================================================
;Support Shortcuts
;=========================================================================================================================================

LAlt & NumpadDiv::Send "Please let me know when you are available for me to assist🙂"

LAlt & NumpadMult::Send "Please can you send your TeamViewer ID and Password"

LAlt & NumpadSub::Send "Have a great rest of the day🙂"

RAlt & NumpadDiv::Send "Please come to IT for assistance🙂"

RAlt & NumpadMult::Send "Please can you log a ticket🙏"

RAlt & NumpadSub::Send "Please can you ask your manager to approve your request🙏"

LCtrl & NumpadDiv::Send "🙏"

LCtrl & NumpadMult::Send "👀"

LCtrl & NumpadSub::Send "🙂"

LCtrl & Numpad7::Send "🫡"

;=========================================================================================================================================
;Mouse Remaps
;=========================================================================================================================================

;Right_Ctrl and Scroll_up increases volume
RCtrl & WheelUp::
{
    SoundSetVolume("+2")
}

;Right_Ctrl and Scroll_down decreases volume
RCtrl & WheelDown::
{
    SoundSetVolume("-2")
}

;Left_Atl and Scroll_up moves to next virtual desktop
LAlt & WheelUp::
{
    Send("{LCtrl down}{LWin down}{Right}{LWin up}{LCtrl up}")
}

;Left_Alt and Scroll_down moves to the previous desktop
LAlt & WheelDown::
{
    Send("{LCtrl down}{LWin down}{Left}{LWin up}{LCtrl up}")
}
