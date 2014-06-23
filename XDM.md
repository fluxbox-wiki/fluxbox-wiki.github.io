Open **/etc/rc.conf** with your favorite text editor, and locate the `XSESSION=""` line. Note that the file may differ depending the distribution you're using.

Example The line should look something like this:

`XSESSION="Gnome"`

Replace Gnome with Fluxbox:

`XSESSION="fluxbox"`

Or comment the Gnome line and add a Fluxbox line:

`#XSESSION="Gnome"`
`XSESSION="fluxbox"`

Save your changes and you're set.

### Another solution

Edit or create a file called **\~/[.xsession](.xsession "wikilink")** Add this line to it (you should comment out or remove all lines that seems to be other windowmanagers):

`exec `[`startfluxbox`](Editing the startup file "wikilink")

Next time you start your computer, xdm will log you into fluxbox.

[Category:English howtos](Category:English howtos "wikilink") [Category:Integration/Startup howtos](Category:Integration/Startup howtos "wikilink")
