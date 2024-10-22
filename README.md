# WinUAE keyboard fixes AutoHotKey script.

Would you like to use Alt+Tab to cycle trough Workbench windows? Or are you fed up of pasting the wrong text, because you accidentally pressed Win+c when you tried to copy from a Windows program?
Then this is the script for you.

The first thin it does is to remap Shift, Win, Alt and Compose key on Windows side like this:
Left Shift becomes F18.
Left Windows key becomes F19.
Left Alt becomes F20.
Right Alt become F21.
Right Windows key becomes F22.
Compose* key becomes F23.
Right Shift becomes F24.
This disables all the Windows hotkey combinations that is usually hijacked by Windows. As Alt+Tab and Ctrl+Shift+Escape. 
This is done only when the mouse-pointer is inside the border of a active WinUAE window.

The same keys need to be remapped the other way in WinUAE. Config entries for coping into WinUAE config files are available at the end of the script.

The other thing it does is it adds additional hotkeys for Cut, Copy and Paste to Windows, that matches the the Amiga side hotkeys.
This is only done if the mouse-pointer is not in a active WinUAE window.

Supplied are also alternative configs for swapped Right/Left Amiga keys.

And at the end of the script are WinUAE config entries that also disables the WinUae built in hotkeys that uses Shift, Ctrl, Win and Alt as qualifiers.
These are only for special circumstances, like if one need to emulate a keyboard that has more keys than a real Amiga-keyboard.
It does not disable the actual Special-qualifier of End-key as one would probably want to map it to a key-code anyway in those cases. 

I claim no Copyright on this, as I find it not sufficiently original to qualify for copyright protection.

*This is the key that opens right-click-menu in Windows.
