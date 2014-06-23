Fluxbox's customization is made by editing plain text located in the **\~/.fluxbox** directory.

At first glance this kind of interaction may seem an unnecessary complication but being confident with this modus operandi you can control the fluxbox behavior to the smallest details.

Files
-----

Let's take a look at the contents of \~/.fluxbox.

     $ awk '{print $1,$9}' < <(ls -lAh --group-directories-first ~/.fluxbox/)

     drwxr-xr-x backgrounds
     drwxr-xr-x pixmaps
     drwxr-xr-x styles
     -rw-r--r-- apps
     -rw-r--r-- fbrun_history
     -rw-r--r-- init
     -rw-r--r-- keys
     -rw-r--r-- lastwallpaper
     -rw-r--r-- menu
     -rw-r--r-- overlay
     -rw-r--r-- slitlist
     -rw-r--r-- startup
     -rw-r--r-- windowmenu

Each file and directory has a very specific function.

### backgrounds, pixmaps e styles

In these three directories are commonly included icons for each element of the RootMenu, wallpapers and themes for Fluxbox. Commonly because this is only a convention, if properly configured Fluxbox can get a theme, an icon and a [background](http://fluxbox-wiki.org/index.php?title=Howto_set_the_background) from any location on disk.

### apps

[It](http://fluxbox-wiki.org/index.php?title=Editing_the_apps_file) contains configurations for individual applications or window decorations such as, size, position, etc., as well as the automatic grouping ([Tabs](Tabs "wikilink")).

### fbrun\_history

A text file that contains the fbrun's command history, a tool available to the user that on many window manager is called "Run ...". Useful for running a program with special parameters without having to use the terminal.

### init

This [file](http://fluxbox-wiki.org/index.php?title=Editing_the_init_file) is the most important, is where all the configuration parameters of Fluxbox are defined. When the window manager starts, it reads the content immediately to determine the parameters which must be started and the paths of the other configuration files.

### keys

Where actions are associated with the [keyboard](http://fluxbox-wiki.org/index.php?title=Keyboard_shortcuts), one of the qualities of Fluxbox is the ability to manage it entirely without a mouse using a wide and complex range of commands.

### lastwallpaper

A file where the last string used to set the desktop background through fbsetbg or fbsetroot is stored, and that will be called automatically at startup.

### menu

The configuration file for [RootMenu](http://fluxbox-wiki.org/index.php?title=Editing_the_menu), the one that contains application you can run from and items to configure Fluxbox.

### overlay

[Here](http://fluxbox-wiki.org/index.php?title=Overlay) you can make changes to the styles in a comprehensive manner and without having to touch every single theme.

### slitlist

Save the placement order in the [slit](http://fluxbox-wiki.org/index.php?title=FAQ#What_is_the_slit) of the various applications loaded when you start Fluxbox.

### startup

Each line of this file contains a command that is launched when you start Fluxbox. Useful for executing applications at [startup](http://fluxbox-wiki.org/index.php?title=Editing_the_startup_file).

### windowmenu

The [windowmenu](http://fluxbox-wiki.org/index.php?title=Editing_the_windowmenu) configuration file, the one that pops up with the right click on the titlebar and contains various commands to manage the window and the "Remember" menu to store the [apps](http://fluxbox-wiki.org/index.php?title=Editing_the_apps_file) file the main aspects of a window.

[Category:English howtos](Category:English howtos "wikilink") [Category:Integration/Startup howtos](Category:Integration/Startup howtos "wikilink")
