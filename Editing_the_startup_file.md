\_\_TOC\_\_

Editing the startup file to launch apps you want
------------------------------------------------

The default **\~/.fluxbox/startup** file which is used by
**startfluxbox** looks like the following: (If you don't have it, make
sure you start fluxbox with **startfluxbox**)

`#!/bin/sh`\
`#`\
`# fluxbox startup-script:`\
`#`\
`# Lines starting with a '#' are ignored.`\
\
`# Change your keymap:`\
`xmodmap "$HOME/.Xmodmap"`\
\
`# Applications you want to run with fluxbox.`\
`# MAKE SURE THAT APPS THAT KEEP RUNNING HAVE AN `*`&`*` AT THE END.`\
`#`\
`# unclutter -idle 2 &`\
`# wmnd &`\
`# wmsmixer -w &`\
`# idesk &`\
\
`# And last but not least we start fluxbox.`\
`# Because it is the last app you have to run it with `*`exec`*` before it.`\
\
`exec fluxbox`\
`# or if you want to keep a log:`\
`# exec fluxbox -log "$fluxdir/log"`

Now just add any applications you want to run after the

`# Applications you want to run with fluxbox.`\
`# MAKE SURE THAT APPS THAT KEEP RUNNING HAVE AN `*`&`*` AT THE END.`

and before

`exec fluxbox`

All applications should have **&** after them, so if you want to run
gaim and firefox, add following lines:

`gaim &`\
`firefox &`

and you're set. Remember that lines starting with \# are comments.

How do I start an application **after** fluxbox starts
------------------------------------------------------

This is pretty easy to do, and for some apps like gdesklets is often
needed. The best thing to do is to edit your existing startup script and
remove the line:

`exec fluxbox`

Then replace it with the following:

`fluxbox &`\
`fbpid=$!`\
\
`sleep 1`\
`{`\
`   # Applications you want to run after fluxbox has started`\
`   # MAKE SURE THAT APPS THAT KEEP RUNNING HAVE AN `*`&`*` AT THE END.`\
`   # ipager &`\
`   # gkrellm2 &`\
`} &`\
` `\
`wait $fbpid`

Probably the most easily-overlooked change here is the line **fluxbox
&**, especially the **&** character. This will start fluxbox in the
background and is required so that the other later programs will start!
Note how we save fluxbox's pid in the shell variable **\$fbpid** and
then at the very end use **wait** to prevent us from exiting this script
until fluxbox exits.

Notice the **sleep 1**: this is where we tell our apps how long to wait
before they start. If you need to wait 10 seconds before starting the
app, fluxbox will already be running so setting **sleep 10** will not
affect how long fluxbox itself takes to start; this will just mean there
is a 10 second delay before your application starts. You could have
multiple "sleep" sections, to start some applications later than others.

Further Reading
---------------

When you start X, either via 'startx' or by your display manager, it
runs **startfluxbox** which ends up running this **\~/.fluxbox/startup**
script. When this script reaches its end, the X server will shut down
(or you will return to your login manager). This is why by default you
must have **exec fluxbox** as the final line in your script, or in the
latter case, the **wait \$fbpid** line, both of which will suspend the
script's execution until fluxbox exits. This ensures the X server keeps
running for as long as fluxbox itself is running, which is usually what
you want - Your session will be *really* short otherwise ;)

[Category:English howtos](Category:English howtos "wikilink")
[Category:Configuration
howtos](Category:Configuration howtos "wikilink")
