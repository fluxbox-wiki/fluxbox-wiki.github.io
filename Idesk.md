Introduction
------------

Idesk is an app used to show icons on the desktop, which by simple or
double clicking (acording to users preferences) will execute a command.
It's used mostly to work with window managers. Icons can be dragged to
the desired postition on the desktop and that position will be
remembered on next idesk startup. The formats supported are png and svg,
though there might be problems with the last mentioned format.

Dependencies
------------

Idesk needs some dependencies installed in order to work.

` pkg-config`\
` librsvg-2.0.1`\
` gdk-pixbuf-2`\
` `

Installing idesk
----------------

There are many ways to install idesk. Users without experience perhaps
prefer using binaries packages, depending on the distro they are working
with. The other option is to download the sources from [idesk
site](http://sourceforge.net/projects/idesk/) To download binaries
[rpmseek](http://www.rpmseek.com) or
[rpmsearch](http://www.rpmsearch.com)

### Mandriva or Red Hat/Fedora

Once we have our binaries we just log as root and:

` # rpm -i /path/to/file/idesk.rpm`\
` (double clicking on .rpm file will install it too)`\
` `

### Debian

` # apt-cache search idesk | sort - u | less (to search the package `\
`                                        and obtain an ordered list)`\
` # apt-get install idesk`\
` `

### Gentoo

` # emerge -uvp idesk`\
` These are the packages I would merge in order`\
` ...`\
` total size of downloads 0kb (this line indicates that all packages `\
`                              are available to begin installation)`\
` # emerge idesk`

### Arch Linux

` # pacman -S idesk`

Thats all! :)

### Sources

Installing from sources is pretty easy too. We decompress and untar the
tar.gz file into any directory. Inside that directory:

` $ make`\
` $ su`\
` # make install`

Make install will copy the executable to /usr/local/bin/idesk.

We have concluded installation process.

Configuration
-------------

Now it's time to start tweaking our idesk to make it functional. With
our favourite editor we will create a file called .ideskrc inside our
home directory.

` $ nano -w ~/.ideskrc`\
` `

Inside .ideskrc we will put the following:

` table Config`\
`   FontName: tahoma`\
`   FontSize: 8`\
`   FontColor: #ffffff`\
`   Locked: false`\
`   Transparency: 150`\
`   HighContrast: true`\
`   Shadow: true `\
`   ShadowColor: #000000`\
`   ShadowX: 1`\
`   ShadowY: 2`\
`   Bold: false`\
`   ClickDelay: 300`\
`   IconSnap: true`\
`   SnapWidth: 55 `\
`   SnapHeight: 100`\
`   SnapOrigin: BottomRight`\
`   SnapShadow: true`\
`   SnapShadowTrans: 200`\
`   CaptionOnHover: false`\
` end`\
` table Actions`\
`   Lock: control right doubleClk`\
`   Reload: middle doubleClk`\
`   Drag: left hold`\
`   EndDrag: left singleClk`\
`   Execute[0]: left doubleClk`\
`   Execute[1]: right doubleClk`\
` end`\
` `

If we look well we will realize that we can play with the values of the
variables. As a hint, Transparency goes from 0 to 255. 0 gives as solid
color and 255 will give us transparent icons that will only be seen with
mouse over them. For a more detailed explanation we have to look at
readme file locatead in **/usr/share/doc/idesk**.

Creating icons and associated actions
-------------------------------------

Now the only thing to do is define icons what is that we want them to
do. Inside home directory we have to create a directory called .idesktop

` $ mkdir ~/.idesktop`

Inside this directory we will creat text files with the following
format.

` $ nano -w ~/.idesktop/name_of_icon.lnk`\
` `

We've just created an icon. If we want it to launch Mozilla Firefox for
example we have to do the following. Inside the file recentely created
we have to write:

` table Icon`\
`   Caption: Mozilla Firefox`\
`   Command: firefox`\
`   Icon: /path/to/image/firefox.png`\
`   X: 100`\
`   Y: 50`\
` end`\
` `\

Caption: name of the icon shown on desktop

Command: command to execute

Icon: path to the icon image

X and Y indicate initial position on screen, we can leave a default
value and then dragg wherever we want it.

That's it. We are ready to use idesk. Can be executed from a terminal:

` $ idesk`\
` `

or add it to startup (**\~/.fluxbox/startup**)

` idesk &`\
` `

Enjoy it

[Category:English howtos](Category:English howtos "wikilink")
[Category:Misc howtos](Category:Misc howtos "wikilink")
