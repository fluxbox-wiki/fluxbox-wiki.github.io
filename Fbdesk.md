How to get Icons on the desktop using fbdesk
--------------------------------------------

For Debian and deb based distros

` # apt-get install fbdesk`

On Fedora

` yum install fbdesk`

On Gentoo

` # emerge fbdesk`

Compile it from source:

` $ ./configure (--help   to check all options)`
` $ make`
` $ make check (optional)`
` $ su - root`
` # make install`

Dependencies
------------

It only requires libpng.

Configuration
-------------

Well, fbdesk displays the default icon at 64 64, the first time is run, we can right click on the icon, to set its properties

` Icon menu`
` Set command`
` Set label`
` _________`
` New icon`
` Delete icon`
` _________`
` Text alpha:  0`
` Icon alpha:  255`
` Reload config`
` _________`
` Exit FbDesk`

Usually, fbdesk auto-detects the style being used, but we can make it faster adding the following command to `~/.fluxbox/startup`:

` fbdesk -rc ~/.fluxbox/init &`

And we can add the following settings to `~/.fluxbox/init`:

` fbdesk.iconFile:  `<filename to icon file>` (default: ~/.fluxbox/fbdesk.icons)`
` fbdesk.font: `<icon font name>` (default: fixed)`
` fbdesk.textColor:  `<color for icon text>`  (default: black)`
` fbdesk.snapX: `<x snap size>` (default: 5)`
` fbdesk.snapY: `<y snap size>` (default: 5)`
` fbdesk.doubleClickInterval: `<time interval between clicks for a double click>` (default: 200)`
` fbdesk.textPlacement: `<placement for text around icon image>`  (default: Bottom)`
` fbdesk.iconAlpha: `<number between 0 and 255 (opaque)>` (default: 255)`
` fbdesk.textAlpha: `<number between 0 and 255 (opaque)>` (default: 0)`
` # Possible values for text placement: Left, Right, Top and Bottom`
` session.styleFile: `

<style file for menu>
(default: none)

According to the default value, the settings for `~/.fluxbox/fbdesk.icons` are:

` [Deskop Entry]`
` Icon=the image filename`
` Name=the icon label`
` Exec=what it executes`
` Pos= horiz vert  # position of the icon`
` [end]`

Well, now we need icons, the most complete set of them I've found are the Gentoo bubble icons:

-   <http://www.gentoo.org/images/icons/icons.tar.bz2>
-   <http://www.ionbox.org/files/gentoo-bubble-icons.tgz>

depending on our favourite applications we can also check the "Icon Themes" section at

-   <http://gnome-look.org/>
-   <http://kde-look.org/>

We can uncompress them either in `~/.fluxbox/icons` or `~/.icons` or `/usr/share/pixmaps` or `/usr/share/icons`.

Creating icons and associated actions
-------------------------------------

Here's an example (vertical aligned icons from the left):

` [Desktop Entry]`
` Name=DVD`
` Exec=/bin/mount /media/cdrom && /usr/bin/xfe /media/cdrom && /usr/bin/eject /media/cdrom`
` Icon=/usr/share/pixmaps/gentoo/l33t_DEV_dvd_umount.png`
` Pos= 20 20`
` [end]`
` `
` [Desktop Entry]`
` Name=xterm`
` Exec=/usr/bin/xterm`
` Icon=/usr/share/pixmaps/gentoo/l33t_TER_Eterm.png`
` Pos= 20 110`
` [end]`

and we can add more entries, Pos= 20 horizontal until we don't have more space available, and increasing the second value (vertical) 90 pixels. If we need to create another column of icons, we start adding entries from Pos= 110 20; 110 110 and so on.

If we place the horizontal values in the vert ones and vert ones in horiz, we'll get lines of icons instead of columns.

It's a good idea to make a backup of `~/.fluxbox/fbdesk.icons`, as if we accidentally move an icon, fbdesk will remember its position, saving it on the file.

[Category:English howtos](Category:English howtos "wikilink") [Category:Misc howtos](Category:Misc howtos "wikilink")
