**How to make windows borderless.** \_\_TOC\_\_

Toggle
------

Add the following entry to your **\~/.fluxbox/keys** file:

`  Mod4 t :ToggleDecor`

Use the one above or choose another key combination (windows-key + t in
this case).

You now have to reload the configuration with

`  fluxbox menu -> reload config`

After the reload your key combo is ready to work and you can toggle the
window decoration on and off.

Per application (global)
------------------------

If you want a specific application to be always borderless, then right
click the window title to bring up the windowmenu. Go to the 'Remember'
section and enable 'Save on close' and 'Decorations' Options.\
Now use your keybinding to remove the window decorations. Closing the
window will save the settings to your **\~/.fluxbox/apps** file. All
aterms you open from now on will have no window decorations.

Per application (specific)
--------------------------

The previous way will be a global setting for one application. If you
want for example your aterm with irssi running in it to be the
borderless window BUT all other instances of the aterm show the window
decoration normally, you need to set a name for this specific aterm.
Most terminals use the "-name" switch for it:

`   $ aterm -name irssiterm -e irssi`

Applying the key-combination on that special aterm will create an entry
in your apps file similar to this here:

`   [app] (name=irssiterm) (class=Aterm)`\
`     [Deco]        {NONE}`\
`   [end]   `

and it will ONLY apply for an app named "irssiterm" which you can force
via the -name switch.

Global
------

You can also have all windows borderless by default, set

` session.screen0.defaultDeco: NONE`

in the **\~/.fluxbox/init** file and reload the configuration.

[Category:English howtos](Category:English howtos "wikilink")
[Category:Configuration
howtos](Category:Configuration howtos "wikilink")
