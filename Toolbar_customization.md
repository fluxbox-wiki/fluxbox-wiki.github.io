\_\_TOC\_\_

how to remove the arrows from the toolbar
-----------------------------------------

Simply open your \~/.fluxbox/init and search for this line:

`session.screen0.toolbar.tools`

Make sure **nothing** of this is in the tools:

`prevworkspace, nextworkspace, prevwindow, nextwindow`

Reload your configuration from the menu and the toolbar arrows will be
gone.

other possible elements in toolbar
----------------------------------

Toolbar can have these tools, in any order, separated by commas.

`workspacename`\
`    shows the name of the current workspace`

`iconbar  `\
`    displays minimized windows, all windows etc, it is the "taskbar"`

`systemtray`\
`    the place for some applications to sit, like gaim or others`

`clock`\
`    A clock based on the C strftime function`

`prevworkspace  nextworkspace`\
`    buttons for changing workspaces`

`prevwindow  nextwindow`\
`    buttons for changing the active window`

[Category:English howtos](Category:English howtos "wikilink")
[Category:Configuration
howtos](Category:Configuration howtos "wikilink")
