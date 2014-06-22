[[Category:English howtos]]
[[Category:Configuration howtos]]
[[Category:Style howtos]]

== Where to get some theme? ==

You can easily download some here:

[http://www.tenr.de/styles/ tenner's styles]
[http://old.fluxbox.org/download/themes/ fluxbox's styles]

then unpack the styles tar ball in your style folder, usually ~/.fluxbox/styles/ then go into it:

 $ cd ~/.fluxbox/styles/yournewstyle

If you look into the folder, you can see a theme.cfg file and a pixmaps folder.
the '''theme.cfg''' file is the file containing the style configuration. the line containing the word '''pixmap''' refeer to the pictures in .xpm format (Xpixmap) located in the pixmaps
folder. Those are easily editable with gimp.

== The theme.cfg file ==

All the lines with the word '''pixmap''' reefers to the pixmaps folder.
The lines that interest us here are the lines beginning by '''window''' but note that you can also change the configuration for the menu and the toolbar.
One button has three representation: one focused, one unfocused and one pressed.
Example with the close button:
 window.close.pixmap:				closefcs.xpm
 window.close.unfocus.pixmap:			closeufcs.xpm
 window.close.pressed.pixmap:			closepr.xpm
They give the link to the corresponding Xpixmap picture.
Note that it is better to begin by configuring the window label backgrounds. So, You can easily create new-buttons just adding a layer in Gimp