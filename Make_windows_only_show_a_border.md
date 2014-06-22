\_\_TOC\_\_

How to make windows only show a border
--------------------------------------

You need to edit **\~/.fluxbox/init**, find the related entry and change
its value from NORMAL (the default) to BORDER:

`session.screen0.defaultDeco: BORDER`

Now save and choose *reconfigure* or *restart* from the rootmenu, all
apps will show ONLY a border now (if the styles uses one). You can also
change the pixelwidth and the color of the border.

Either do it globally using the [overlay
file](http://fluxbox-wiki.org/index.php/Howto_style_overlay) or
separately for every single style.

In both cases you need to add three lines to the appropriate file:

`window.borderWidth:   `<int>\
`window.focus.borderColor: `<color>\
`window.unfocus.borderColor: `<color>

The meaning should be quite obvious, the integer defines the width for
the border in pixel, and the color is the actual color of the border,
both for when the window is focused or not.

How to make windows only show a border and tabs
-----------------------------------------------

Since external tabs returned in fluxbox 1.0rc you can use them the
common way (tabs sit on a full decorated window) or the special way.
Following the guidelines from the above set up, you can configure your
**\~/.fluxbox/init** file like this:

`session.screen0.defaultDeco: TAB`

You will get a window with border (as described above) but with a nice
tab attached as set in the "tab" section of the rootmenu.

[Category:English howtos](Category:English howtos "wikilink")
[Category:Configuration
howtos](Category:Configuration howtos "wikilink")
