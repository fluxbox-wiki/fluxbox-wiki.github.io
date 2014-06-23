==What is Mod4==
[[Category:English howtos]]
[[Category:Configuration howtos]]
Mod4 is the evil Windows key found in most of newer keyboards. Usually it sits on both sides of keyboard. On the left it is between Ctrl and Alt and on the right side next to AltGr. Then there is also the Menu on the right side, next to Ctrl.

==On an Apple/Mac==
On Apple keyboards, it is the Apple "command" key, found immediately to the left and right of the space bar.

==Mod key information==
It is possible to get information about which keys are assigned to which modifiers by running the command
  $ xmodmap -pm
A working Mod4 key will typically have the entry
  mod4    Super_L

==Setting up Mod4==
If mod4 is not assigned to a key, or you have updated to Modular X and now your mod4 key has quit working, try running the command
  $ xmodmap -e 'add mod4 = Super_L'

==Setting up Super_L==
If mod4 cannot be assigned, the Super_L keysym may not be assigned to a key on the keyboard.  The ''xev'' command will display information when a key is pressed:
  KeyPress event, serial 34, synthetic NO, window 0x1e00001,
      root 0x13b, subw 0x0, time 16844797, (867,-539), root:(868,243),
      state 0x0, '''keycode 115 (keysym 0x0, NoSymbol)''', same_screen YES,
      XLookupString gives 0 bytes: 
      XmbLookupString gives 0 bytes: 
      XFilterEvent returns: False

If the state is set to '''NoSymbol''' then you can assign the key to Super_L by taking the keycode given (in this case 115) and running the command:
  $ xmodmap -e 'keycode 115 = Super_L'

==Storing xmodmap expressions==
xmodmap expressions can be stored by adding the part between the single quotes to your '''~/.Xmodmap''' file.  Be sure in either your [[howto edit the startup file|startup]] file, or your ~/[[.xinitrc]] file that you add the line
  $ xmodmap ~/.Xmodmap
So the expressions are loaded at startup.