Howto shutdown your computer with a dialog
------------------------------------------

Fluxbox doesn't come with some nice and eyecandy way to shutdown your computer. But, if you're using [GDM](GDM "wikilink") to log in, you can also tell it to shut down. For ease of use, a script giving you some confirmation dialog can be used.

First, we'll create a dialog:

` xmessage -nearmouse -buttons No:1,Yes:0 "Really shutdown?"`

There are other ways to do this, we're not bound to use xmessage here. It's an easy way, though.

If the user clicks the "no" button, nothing else needs to be done, except maybe for giving hime some advice on using his mouse. If he clicks on "yes", we'll shut down his computer.

To do so, we'll first tell GDM that we want to shutdown by the time fluxbox exits:

` gdmflexiserver -a -c 'SET_LOGOUT_ACTION HALT'`

Then, we kill fluxbox:

` kill -TERM $(xprop -root _BLACKBOX_PID | awk '{print $3}')`

Some string and tape adds up to a script to add to your menu:

` #!/bin/sh`
` if xmessage -nearmouse -buttons No:1,Yes:0 "Really shutdown?"; then`
`   gdmflexiserver -a -c 'SET_LOGOUT_ACTION HALT'`
`   kill -TERM $(xprop -root _BLACKBOX_PID | awk '{print $3}')`
` else`
`   xmessage -nearmouse "Then why did you press that big red button?"`
` fi`

[Category:English howtos](Category:English howtos "wikilink") [Category:Integration/Startup howtos](Category:Integration/Startup howtos "wikilink")
