Building fluxbox from source
----------------------------

### What do I need?

Fluxbox can be built with the usual common building tools (gcc, gpp,
make etc) and libx11 development libraries (usually libx11-devel and/or
libx11-dev).

If you get errors like this

` checking for X... no configure: error: Fluxbox requires the X Window System libraries and headers.`

Then try installing these packages (or similar ones)

`xlibs-dev`\
`x-window-system-dev`\
`x11-devel`

### Where do I get the source?

You can always get the latest source from
[<http://fluxbox.org/download>](http://fluxbox.org/download/) or from
[the GIT repository](http://git.fluxbox.org/).

### Building fluxbox (short description)

`$ tar -zxvf fluxbox-*.tar.gz  OR  tar -jxvf fluxbox-*.tar.bz2`\
`$ cd fluxbox`\
`$ ./configure`\
`$ make`\
`$ su`\
`# make install`

Notes: configure can take other arguments. They are described below. You
can use sudo instead of su. Default install path is
**/usr/local/bin/fluxbox/**

### Ok, I have everything. Now how do I build it? (Long description)

First untar the archive you have downloaded:

for a \*.tar.gz compressed file, issue the command:

**`tar` `-zxvf` `fluxbox-*.tar.gz`**

and for a .tar.bz2 compressed file, issue the command:

**`tar` `-jxvf` `fluxbox-*.tar.bz2`**

NOTES! Replace \* with the version number for the full file name in the
above instructions and also please note that you need gzip utilities for
tar.gz and bzip2 utilities for tar.bz2.

Then change into the unpacked Fluxbox source code directory with this
command:

`$ cd fluxbox`

Now you will be in the top level directory with the previously unpacked
source code. You should read the README and INSTALL files located there.

Continue with:

`$ ./configure`

If you want to enable xinerama (multiple monitors) use **./configure
--enable-xinerama** and if you want to use png icons (and you have
imlib2 development packages installed) you can use **./configure
--enable-imlib2**. Or even both, like **./configure --enable-xinerama
--enable-imlib2**. Easy, huh?

If in any doubt you can run the command **./configure --help** to see
all the options available.

When that is finished you must build the binary with:

`$ make`

Finally install the new shiny build:

`$ sudo make install`

Or if that doesn't work for your set up (you need to be root to install
unless you built Fluxbox to install in your \$HOME):

`$ su`\
`# make install`

Fluxbox will install into **/usr/local/share/fluxbox**

What is git version and why should I use it?
--------------------------------------------

Git version of Fluxbox is the latest development version available for
testing. So if you want to try bleeding edge features, help hunting bugs
or create a custom patches, this is what you should use.

### Getting the git version and installing it

You need [git](http://git.or.cz/), automake-tools and autoconf-tools to
be installed.

First please read-up on git usage
[here](http://fluxbox-wiki.org/index.php/Git_-_using)

To get the sources and prepare for compilation you need to type:

`$ git clone `[`git://git.fluxbox.org/fluxbox.git`](git://git.fluxbox.org/fluxbox.git)` && cd fluxbox && ./autogen.sh`

After this you can go the usual way:

`$ ./configure && make && sudo make install`

Please note that this does not enable additional features. So if you
want to use Xinerama, use ./configure --enable-xinerama and for png
icons (imlib2) add --enable-imlib2

This will compile the souces and install it into the standard
directories **/usr/local/bin** for the fluxbox binary and
**/usr/local/share/fluxbox/** for system wide config files and system
styles.

For an easy update you only need:

`$ cd fluxbox && git pull && make && sudo make install`

### Getting an older revision from the git repositories

Why would you want to do this ?

-   Maybe you have something broken on your system and the latest git
    version cant compile, but you remember compiling revision X...
-   Maybe you found a bug that hasnt been addressed yet.
-   Maybe you want to use a patch that doesnt work with the
    bleeding-edge stuff.

Whatever the motives - here is the way to go:

` $ git checkout commitId`

Of course you need to replace the commitId with revision commit you
want.

[Category:English howtos](Category:English howtos "wikilink")
[Category:Integration/Startup
howtos](Category:Integration/Startup howtos "wikilink")
