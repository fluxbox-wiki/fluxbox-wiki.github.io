[WDM](http://voins.program.ru/wdm/) is a small, light-weight replacement for XDM. If you're looking for nice simple replacement to XDM, i would highly recommend it.

Its fairly easy to add fluxbox (or any other window manager) to its list when logging in.

\_\_TOC\_\_ I assume you've got WDM installed and working properly. If not, go do that and then come back.

Firstly, you'll need to edit two of the config files for wdm. The first being **Xclients** and the second being **wdm-config**. On my distribution ([Gentoo](http://www.gentoo.org)) these are located in **/etc/X11/wdm**.

Editing the **Xclients** file
-----------------------------

In the **Xclients** file we'll need to add a little bit of scripting that will check if the fluxbox executable exists, and is executable.

Open the **Xclients** file with your favourite editor. The part of the script we want to change starts like this:

` # First thing - check the user preferences`
` if [ -f $HOME/.wm_style ] ; then`
``     WMSTYLE=`cat $HOME/.wm_style` ``
`    case "$WMSTYLE" in`

and is filled out with a bunch of items that look like this:

` wmaker*|WindowMaker*)`
`   # startup WindowMaker`
`   WMAKER_PATH=/usr/bin/wmaker`
`   if ! test -x $WMAKER_PATH ; then`
`      FindInPath $WMAKER_PATH`
`      if test -n "$result" -a -x "$result"; then`
`          WMAKER_PATH="$result";`
`      fi`
`   fi`
`   if test -x $WMAKER_PATH ; then`
`      echo Starting WindowMaker >$HOME/.xwm.msgs`
`      env > "$HOME"/Xrootenv.0`
`      exec $WMAKER_PATH >>$HOME/.xwm.msgs 2>&1`
`   fi`
`   ;;`
`   esac`
` fi`

we need to add a piece of code to tell it to check for the fluxbox executable. so before the finishing code displayed above, add the following lines:

` fluxbox*|FluxBox)`
` # startup fluxbox`
` FLUXBOX_PATH=/usr/bin/startfluxbox`
` if ! test -x $FLUXBOX_PATH ; then`
`   FindInPath $FLUXBOX_PATH`
`   if test -n "$result" -a -x "$result"; then`
`     $FLUXBOX_PATH="$result";`
`   fi`
` fi`
` if [ -x $FLUXBOX_PATH ] ; then`
`   echo Starting FluxBox >$HOME/.xwm.msgs`
`   exec $FLUXBOX_PATH >>$HOME/.xwm.msgs 2>&1`
` fi`
` ;;`

Editing the **wdm-config** file
-------------------------------

After weve done this, we'll need to add fluxbox to the wdm-config file. Open this file with your favourite editor, and find the line that looks like this:

`  DisplayManager*wdmWm:           WindowMaker:None`

and change it so it looks like this

`  DisplayManager*wdmWm:  WindowMaker:FluxBox`

And that's all there is to it. Restart WDM and hey presto, FluxBox apears in the menu.

Enjoy

[Category:English howtos](Category:English howtos "wikilink") [Category:Integration/Startup howtos](Category:Integration/Startup howtos "wikilink")
