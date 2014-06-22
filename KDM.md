kdm should automatically find that you have installed fluxbox and will
display it as a choice.

fluxbox startup script
----------------------

By this way it is not possible (at least in my *Debian 3.1 Sarge* with
*kdm*) to use *\~/.fluxbox/startup* script, but in *Debian 4.0 Etch* it
seems to work.

For *Debian 3.1 Sarge*, first edit
**/usr/share/xsessions/fluxbox.desktop**:

` [Desktop Entry]`\
` Encoding=UTF-8`\
` Name=Fluxbox`\
` Comment=Highly configurable and low resource X11 Window manager`\
` `**`Exec=/usr/bin/startfluxbox`**\
` Terminal=False`\
` `**`TryExec=/usr/bin/startfluxbox`**\
` Type=Application`\
` `\
` [Window Manager]`\
` SessionManaged=true`

changing the bold lines: it's started */usr/bin/startfluxbox* script,
not just *fluxbox*. Finally edit **\~/.fluxbox/startup**:

` #!/bin/bash`\
` `\
` ## uncomment it to launch xscreensaver or idesk`\
` ##xscreensaver &`\
` ##idesk &`\
` `\
` exec /usr/bin/fluxbox`

Now it is possible to start a fluxbox session from kdm and use the
startup script *\~/.fluxbox/startup* to fit your needs.

[Category:English howtos](Category:English howtos "wikilink")
[Category:Integration/Startup
howtos](Category:Integration/Startup howtos "wikilink")
