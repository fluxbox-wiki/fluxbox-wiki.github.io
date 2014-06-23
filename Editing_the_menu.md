\_\_TOC\_\_

### Getting to know your text editor

The syntax in the fluxbox menu is very simple to follow and there are really only a few things you **need** to know to jump right into editing your menu.

The first thing is the most basic syntax:

` [begin]`
` [exec] (term) {xterm} `</usr/share/pixmaps/terminal.png>
` [reconfig] (Reload config)`
` [exit] (Exit)`
` [end]`

This will give you an extremely basic menu. It will have xterm, a reload config, a restart and an exit. If your fluxbox was built with IMLIB2 support and you have an icon named terminal.png in your /usr/share/pixmaps folder you will also have an icon in your menu.

### How do I know if my fluxbox was built for icons in the menu

run the command

` $ fluxbox -i`

the output from this command is a list of things fluxbox was built with, if the list has

`-IMLIB2`
`or`
`-XPM`

it means it was built with out this support (notice the **-**). The things fluxbox needs for icon support are: IMLIB2 (this will allow for png icons) and XPM (this will allow for xpm icons). This is the same for styles not just the menu. If you saw only **XPM** (without -), you can use **.xpm** icons, and if you have **IMLIB2** then you can use **.png** (or .jpg etc, and of course .xpm too)

The icon path should be absolute, like **</home/joeuser/.fluxbox/pixmaps/aterm.png>**

### What really is possible?

Like in the example above, the syntax is almost always

`[tag] (label or filename) {command or filename} `<icon filename>

The supported tags are (taken from the manpage):

`[begin] (label)`
`   This tells Fluxbox to start parsing the menu file. This tag is required`
`   for Fluxbox to read your menu file. If it cannot find it, the system`
`   default menu is used in it's place.`

`[end]`
`   This tells Fluxbox that it is at the end of a menu. This can either be a `
`   submenu or the main root menu. There must be at least one of these tags in `
`   our menu to correspond to the required [begin] tag.`

`[exec] (label) {command}`
`   Inserts a command item into the menu. When you select the menu item from `
`   the menu, Fluxbox runs command.`

`[exit] (label)`
`   Inserts an item that shuts down and exits Fluxbox. Any open windows are `
`   reparented to the root window before Fluxbox exits.`

`[include] (file-or-directory-name)`
`   Parses the file specified by filename inline with the current menu. The `
`   filename can be the full path to a file or it can begin with ~/, which `
`   will be expanded into your home directory. If the path is a directory, `
`   then all files in the directory are included.`

`[nop] (label)`
`   Insert a non-operational item into the current menu. This can be used to `
`   help format the menu into blocks or sections if so desired. This tag does `
`   support a label, but one is not required in which case a blank item will `
`   be used instead.`

`[separator]`
`   This will create a nice separation line. Useful for splitting up sections `
`   in a pretty way.`

`[style] (label) {filename}`
`   This tells Fluxbox to insert an item that, when selected, reads style file`
`   named filename and apply the new textures, colors and fonts to the current`
`   running session.`

`[stylesmenu] (label) {directory}`
`   Reads all filenames from the specified directory, assuming that they are `
`   all valid style files, and creates menu items in the current menu for `
`   every filename, that, when selected by the user will apply the selected `
`   style file to the current session. The labels that are created in the menu`
`   are the filenames of the style files.`

`[stylesdir] (directory)`
`   Creates a submenu entry with label (that is also the title of the new `
`   (submenu), and inserts in that submenu all filenames in the specified `
`   directory, assuming that they are all valid style files (directories are `
`   ignored) in the same way as the [stylesdir] command does. Both [stylesdir]`
`   and [stylesmenu] commands make it possible to install style files without `
`   editing your init file.`

`[submenu] (label) {menutitle}`
`   This tells Fluxbox to create and parse a new menu. This menu is inserted `
`   as a submenu into the parent menu. These menus are parsed recursively, so `
`   there is no limit to the number of levels or nested submenus you can have.`
`   The title for the new menu is optional, if none is supplied, the new `
`   menu's title is the same as the item label. An [end] tag is required to `
`   end the submenu.`

`[reconfig] (label)`
`   When selected this item re-reads the current style and menu files and `
`   applies any changes. This is useful for creating a new style or theme,`
`   as you don't have to constantly restart Fluxbox every time you save your `
`   style. However, Fluxbox automagically rereads the menu whenever it `
`   changes.`

`[restart] (label) {command}`
`   This tells Fluxbox to restart. If command is supplied, it shuts down and `
`   runs the command (which is commonly the name of another windowmanager). `
`   If the command is omitted, Fluxbox restarts itself.`

`[config] (label)`
`   Inserts a Fluxbox native submenu item, containing numerous configuration`
`   options concerning window placement, focus style, window moving style, `
`   etc.`

`[wallpapers] (directory) {command}`
`   This allows you to list your backgrounds. This tag is built in to use `
`   fbsetbg(1) and allows you to simply click on an image to set your `
`   wallpaper. See? Fluxbox makes it easy… This item can also be hacked to`
`   perform a command over directory content (it doesn't dive in subdirs,`
`   it's a hack). For instance, to choose between playlists`
`   [wallpapers] (~/Music/Playlists) {xmms} will perfectly work.`

`[workspaces] (label)`
`   This tells Fluxbox to insert a link to the workspaces menu directly into `
`   your menu. This is handy for those users who can't access the workspace `
`   menu directly (e.g. if you don't have a 3 button mouse, it is rather hard `
`   to middle click to show the workspace menu).`

### I want some kind of GUI for this

Long story short. Use [fluxMenu](http://fluxbox-wiki.org/index.php?title=FluxMenu). It is old but should work just fine. Or [Fluxbox Menu Editor (FME)](http://fluxbox-wiki.org/index.php?title=Fluxbox_Menu_Editor_(en))

[Category:English howtos](Category:English howtos "wikilink") [Category:Configuration howtos](Category:Configuration howtos "wikilink")
