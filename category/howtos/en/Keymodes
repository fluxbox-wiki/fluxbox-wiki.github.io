__TOC__
[[Category:English howtos]]
[[Category:Configuration howtos]]
== Thanks ==
Thanks go out to Mark Tiefenbruck (_markt/#fluxbox/Freenode) who I pestered long until he
wrote that nice piece of code. :)


== What are KeyModes ==
KeyModes or "Namespaces in the keys-file" are a way to "constantly" swap the keybindings by the press of some hotkey combination.
The idea behind it is to an equal behaviour as with other WMs, where you have '''modes''' for window movement and resize.
Currently there's just the possibility to bind such behaviour to a specific hotkey combination.

Example:
 Mod4 Shift Up        :ResizeVertical -2
 Mod4 Shift Down      :ResizeVertical +2
 Mod4 Shift Left      :ResizeHorizontal -2
 Mod4 Shift Right     :ResizeHorizontal +2
 Mod1 Shift Up        :ResizeVertical -10
 Mod1 Shift Down      :ResizeVertical +10
 Mod1 Shift Left      :ResizeHorizontal -10
 Mod1 Shift Right     :ResizeHorizontal +10

As you might notice, you run out of '''usable''' hotkeys for action like that pretty fast.
I will explain that two keymodes in the ''''Examples'''' section further below.


== Where/How do I get a KeyModes-ready fluxbox ==
KeyModes are available from revision 4298 and/or version 1.0rc.

== How do I configure KeyModes ==
Syntax for a line in keys:
 [NameSpace:] <mod> [<mod> <mod>] key [key key] :command <commanoptions>
If you don't give a namespace, the namespace '''default''' is used instead.

The new command introduced is '''KeyMode'''.
 :KeyMode <NameOfMode> [<mod> [mod mod ...] <key> [key key ...]]
The last "<mod>...<key>" combination is used to get back into the "default" keymode. If this is not defined the
default is bound to "Escape".


== Example ==
As I like examples most to understand something, here's the Resize-Example again, now with KeyModes:
===== Different resize-keys until you hit "Escape" =====
 ## ResizeMode
 Mod4 w Mod4 r               :KeyMode ResizeMode
 ResizeMode: None Up         :ResizeVertical -2
 ResizeMode: None Down       :ResizeVertical +2
 ResizeMode: None Left       :ResizeHorizontal -2
 ResizeMode: None Right      :ResizeHorizontal +2
 ResizeMode: Shift Up        :ResizeVertical -10
 ResizeMode: Shift Down      :ResizeVertical +10
 ResizeMode: Shift Left      :ResizeHorizontal -10
 ResizeMode: Shift Right     :ResizeHorizontal +10
===== Different move-keys until you hit "Escape" =====
 ## MoveMode 
 Mod4 w Mod4 m               :KeyMode MoveMode
 MoveMode: None Up           :MoveUp 2
 MoveMode: None Down         :MoveDown 2
 MoveMode: None Left         :MoveLeft 2
 MoveMode: None Right        :MoveRight 2
 MoveMode: Shift Up          :MoveUp 10
 MoveMode: Shift Down        :MoveDown 10
 MoveMode: Shift Left        :MoveLeft 10
 MoveMode: Shift Right       :MoveRight 10
===== Disables all keybinds (for use with Xnest) =====
 ## XnestMode
 Mod1 x                      :KeyMode XnestMode

== The next level ==
===== Notice when changing the namespace =====
I wanted a nice notice when I change from one into another namespace, so I used this:
 Mod4 w Mod4 r               :MacroCmd {Exec echo "Resize Mode" | osd_cat -d 1 -p bottom -A center } {KeyMode ResizeMode}
'''Idea:''' Add this notice directly into fluxbox and use the same look & feel as for resizing/moving windows, when the size or location
is shown in the middle of the screen. Configuration options for the duration of the notification as well as its placement would be nice.