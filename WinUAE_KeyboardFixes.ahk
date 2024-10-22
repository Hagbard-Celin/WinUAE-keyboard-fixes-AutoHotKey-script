#Requires AutoHotkey v2.0
; #NoTrayIcon ; Un-comment to disable the tray-icon and thus also the ability to quit the script. 

; This remaps qualifier keys to disable windows overriding certain hotkeys.
; It needs matching entries in WinUAE config. 
#HotIf AmInActiveEmulationWindow() or WinActive("Input captured. F12 = Exit")
LShift::F18
LWin::F19
LAlt::F20
LControl & RAlt::F21 ; This is AltGr. 
;RAlt::F21 ; This is for right alt, might exist on pre-WinKey keyboards.
RWin::F22
AppsKey::F23
RShift::F24

; This makes Windows use the same hotkeys for Cut/Copy/Paste as the emulated Amiga
; in addition to the Windows standard Cut/Copy/Paste hotkeys.
#HotIf not AmInActiveEmulationWindow()
>#x:: Send "^x"
>#c:: Send "^c"
>#v:: Send "^v"

; Alternative for the above, for swapped Amiga-keys.
;#HotIf not AmInActiveEmulationWindow()
;<#x:: Send "^x"
;<#c:: Send "^c"
;<#v:: Send "^v"

; Checks if we are in a active WinUAE window.
AmInActiveEmulationWindow() {
    Control := 0
	MouseGetPos , , &Window, &Control
    return (WinActive("ahk_id " Window) and Control="AmigaPowah1")
}

; The relevant entries for WinUAE config files follows.
; They are meant to go after the lines saying:
;	input.1.keyboard.0.friendlyname=WinUAE keyboard
;	input.1.keyboard.0.name=NULLKEYBOARD
;	input.1.keyboard.0.empty=false
;	input.1.keyboard.0.disabled=false 
; Copy and un-comment the the parts for the functionality you want.


; These entries disables all default mappings for the qualifiers (optional)
;input.1.keyboard.0.button.42.LSHIFT=NULL,'NULL'.0
;input.1.keyboard.0.button.54.RSHIFT=NULL,'NULL'.0
;input.1.keyboard.0.button.56.LMENU=NULL,'NULL'.0
;input.1.keyboard.0.button.184.RMENU=NULL,'NULL'.0
;input.1.keyboard.0.button.210.INSERT=NULL,SPC_PASTE.0.I
;input.1.keyboard.0.button.219.LWIN=NULL,'NULL'.0
;input.1.keyboard.0.button.220.RWIN=NULL,'NULL'.0
;input.1.keyboard.0.button.221.APPS=NULL,'NULL'.0


; These entries handle the mapping of the Amiga-keys
;input.1.keyboard.0.button.106.KEY_6A=KEY_AMIGA_LEFT.0,SPC_QUALIFIER_WIN.0
;input.1.keyboard.0.button.109.KEY_6D=KEY_AMIGA_RIGHT.0,SPC_QUALIFIER_WIN.0

; These are the alternative entries for swapped Amiga-keys
;input.1.keyboard.0.button.109.KEY_6D=KEY_AMIGA_LEFT.0,SPC_QUALIFIER_WIN.0
;input.1.keyboard.0.button.106.KEY_6A=KEY_AMIGA_RIGHT.0,SPC_QUALIFIER_WIN.0


; These entries handle all the other qualifier keys needed
;input.1.keyboard.0.button.105.KEY_69=KEY_SHIFT_LEFT.0,SPC_QUALIFIER_SHIFT.0
;input.1.keyboard.0.button.107.KEY_6B=KEY_ALT_LEFT.0,SPC_QUALIFIER_ALT.0
;input.1.keyboard.0.button.108.KEY_6C=KEY_ALT_RIGHT.0,SPC_QUALIFIER_ALT.0
;input.1.keyboard.0.button.110.KEY_6E=KEY_HELP.0
;input.1.keyboard.0.button.118.KEY_76=KEY_SHIFT_RIGHT.0,SPC_QUALIFIER_SHIFT.0

;***        WARNING: Do not use anything below this line if all        ***
;***                 you need is a standard Amiga keyboard.            ***

; The following are alternative entries, that also disables all WinUAE built-in 
; hotkeys that uses Sift/Ctrl/Win/Alt as qualifiers.
; These are not recommended, unless one need key-codes not supported on real 
; classic Amigas in the emulated environment, or got other special needs.
; Again these config entries will disable essential functionality, DO NOT USE.

; These entries disables the WinUae hotkeys that use Ctrl as Qualifier
;input.1.keyboard.0.button.29.LCONTROL=KEY_CTRL.0,'NULL'.0
;input.1.keyboard.0.button.157.RCONTROL=KEY_CTRL.0,'NULL'.0

; These entries handle the mapping of the Amiga-keys
; and disable all built in hotkeys that uses Win-keys as qualifier
;input.1.keyboard.0.button.106.KEY_6A=KEY_AMIGA_LEFT.0
;input.1.keyboard.0.button.109.KEY_6D=KEY_AMIGA_RIGHT.0

; These are the alternative entries for swapped Amiga-keys
; with all built in hotkeys that uses Win-keys as qualifier disabled
;input.1.keyboard.0.button.109.KEY_6D=KEY_AMIGA_LEFT.0
;input.1.keyboard.0.button.106.KEY_6A=KEY_AMIGA_RIGHT.0

; These entries handle all the other qualifier keys needed
; and disables all built in hotkeys that uses these keys as qualifier
;input.1.keyboard.0.button.105.KEY_69=KEY_SHIFT_LEFT.0
;input.1.keyboard.0.button.107.KEY_6B=KEY_ALT_LEFT.0
;input.1.keyboard.0.button.108.KEY_6C=KEY_ALT_RIGHT.0
;input.1.keyboard.0.button.110.KEY_6E=KEY_HELP.0
;input.1.keyboard.0.button.118.KEY_76=KEY_SHIFT_RIGHT.0