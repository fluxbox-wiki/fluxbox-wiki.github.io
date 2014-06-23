### How to change what buttons are on the windows' titlebar

By default Fluxbox has four buttons on the titlebar, one on the left side (**Stick**) and three on the right side (**Minimize, Maximize, Close**)

You can change them by editing **\~/.fluxbox/init** Find the following lines:

`session.titlebar.left: Stick`
`session.titlebar.right: Minimize Maximize Close`

Then just change those. Possible buttons are (in Fluxbox 0.9.14):

`MenuIcon`
`    A button to show either the program's icon or default menu icon in theme`
`    Pops up the window menu when clicked (same as right clicking the titlebar)`

`Stick`
`    Toggles whether window sticks or not, meaning it is visible on all workspaces`

`Shade`
`    Shades the window, only the titlebar will be left visible`

`Minimize`
`    Self explanatory`

`Maximize`
`    This too ...`

`Close`
`    ... and this`

After editing, save the file and from fluxbox menu choose *Config -\> Reconfigure or Reload config or Restart*'

[Category:English howtos](Category:English howtos "wikilink") [Category:Configuration howtos](Category:Configuration howtos "wikilink")
