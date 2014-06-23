Howto exit fluxbox with a dialog
--------------------------------

It's not very hard or tricky to have a nice popup-dialog at the exit of fluxbox to prevent one from exiting just by accident.

There are basicly 2 problems to solve:

-   which kind of dialog one wants to use
-   to find out the processid of fluxbox to kill the right process

Beside the famous xmessage there are several other dialog-programs available: zenity, kdialog, gxmessage, gdialog and what not. Each of them are able to provide several widgets as buttons, textboxes and so on. They read info from stdinput, popup, wait that the user clicks on a widget and provide some feedback.

example:

` $> xmessage -nearmouse -buttons no:1,yes:0 "really logout?"`

and if you click on yes or no you get either 0 or 1 as feedback.

so, the example `logout.sh` would look like:

` #!/bin/sh`
` pid=""`
` message="really logout?"`
` if xmessage -nearmouse -buttons no:1,yes:0 "$message"; then`
`   echo "i would kill $pid if i would know it"`
` fi`

so, now we just need to know the processid of the current fluxbox. thats pretty easy:

` $> xprop -root _BLACKBOX_PID | awk '{print $3}'`

this would give you exactly the pid of the currently used fluxbox.

` #!/bin/sh`
` message="really logout?"`
` if xmessage -nearmouse -buttons no:1,yes:0 "$message"; then`
`       kill -TERM $(xprop -root _BLACKBOX_PID | awk '{print $3}')`
` fi`

if you want to use zenity (more eye-candy), an option could be:

`#!/bin/sh`
`if zenity --question --title "Alert" --text "really wanna loose all that  work?!"; then`
`        kill -TERM $(xprop -root _BLACKBOX_PID | awk '{print $3}')`
`fi`

--[Curley sue](User:Curley sue "wikilink") 18:31, 7 November 2006 (CST) (correction of kill line and adding zenity)

and that's it :) put this `logout.sh` to some place in your `PATH`, make it executable `(chmod u+x logout.sh)` and replace `[exit]` in your `~/.fluxbox/menu` with

`[exec] (exit) {Exec logout.sh} `

if one is too lazy to do all of this one could use a tiny program called "fbcmd" that it available at

<http://darkshed.net/files/c_cpp/fbcmd/>

and then use:

` $> fbcmd logout zenity "really logout?"`

or

` $> fbcmd logout gdialog "really really logut?"`

or whatever one likes.
fbcmd can do a bit more than that but thats another topic :)

[Category:English howtos](Category:English howtos "wikilink") [Category:Integration/Startup howtos](Category:Integration/Startup howtos "wikilink")
