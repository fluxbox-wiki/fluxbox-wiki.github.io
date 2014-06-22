How to add Fluxbox to GDM
-------------------------

Note: This was copied from fluxbox's site. Someone using gdm should
check this etc.

How do I add fluxbox to my GDM sessions menu.

Create the file: /etc/gdm/Sessions/fluxbox with contents:

    #!/bin/sh
    #
    # /etc/gdm/Sessions/fluxbox
    #
    # global fluxbox session file -- used by gdm
    exec /etc/X11/Xsession /usr/bin/startfluxbox

Of course, change /usr/bin/startfluxbox to wherever your startfluxbox
startup script is.

If the /etc/gdm directory doesn't exist, it may be
/etc/X11/gdm/Sessions/fluxbox on your computer.

The first section doesnt work for me, what can I do?
----------------------------------------------------

If your on debian distro you need to **touch \~/.Xsession** use your
favorite editor edit \~/.Xsession and put **exec /usr/bin/startfluxbox**
then save the file and restart your GDM session.

### There is another way

On some distros you need to do something a bit different. For Debian,
Ubuntu and a few other distros you need to follow this little guide
instead.

If you decide you need to compile Fluxbox from git on your Ubuntu system
you might have noticed, after it installed, that there was no way to
start using Fluxbox, even if you tried to do

``  $ startx `which fluxbox` -- :1 ``

you get premission denied and are unable to connect to the X server (I
only tried this on Hoary). So on to the fix....

` $ sudo gedit /usr/share/xsessions/fluxbox.desktop`

Add to that file the following information:

` [Desktop Entry]`\
` Encoding=UTF-8`\
` Name=Fluxbox`\
` Comment=Highly configureable low resource X11 Window Manager`\
` Exec=`**`/usr/local/bin/startfluxbox`**\
` Terminal=False`\
` TryExec=`**`/usr/local/bin/startfluxbox`**\
` Type=Application`

NOTE: The bold lines, **/usr/local/bin/startfluxbox** are for custom
built fluxboxs. If you have installed with the package manager, use
**/usr/bin/startfluxbox**.

NOTE: For FreeBSD 6.0 try to put fluxbox.desktop on
/usr/X11R6/share/gdm/xsessions/fluxbox.desktop

Then save the file and restart your GDM session. This can be done by
logging out of your current X session then pressing ctrl+alt+backspace
note: NOT ctrl+alt+del (that would work but will also reboot your
computer)

Customize the startup script
----------------------------

To customize the startup script see [this
page](Howto edit the startup file "wikilink") You will find information
explaining how to start applications at startup, how to execute apps
automatically after fluxbox has already started, and other topics.

[Category:English howtos](Category:English howtos "wikilink")
[Category:Integration/Startup
howtos](Category:Integration/Startup howtos "wikilink")
