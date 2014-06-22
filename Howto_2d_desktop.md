First, install wmctrl either from your distribution's package manager or
get the source [here](http://sweb.cz/tripie/utils/wmctrl/). Next,
download [this perl
script](http://mark.tiefenbruck.org/fluxbox/scripts/next_desktop.pl).
The script has the following syntax: perl next\_desktop.pl
[up|down|left|right [\# [0]]]

-   up|down|left|right is the direction to move: default right
-   "\#" stands for the number of workspaces to move: default 1
-   0 indicates that the script should not wrap around the grid to
    change workspaces

Inside the script, there are some other configuration variables for
setting how many rows and columns to use. You may set them, but if you
leave them alone, the script will try to guess your layout based on the
number of workspaces you have. This should result in the desired
behavior in most cases.

Now, when you want to change desktops, use this script instead of the
built-in commands.

[Category:English howtos](Category:English howtos "wikilink")
[Category:Misc howtos](Category:Misc howtos "wikilink")
