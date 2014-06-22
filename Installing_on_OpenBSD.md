OpenBSD does have fluxbox in ports but it is usually slightly outdated.
At the moment of writing only 0.9.15.1 version was available. OpenBSD
maintainers have their perfectly clear reasons for it, so, if you wish
to install latest fluxbox, you shouldn't be afraid getting your hands a
little dirty.

Please, note that this howto was written on OpenBSD 4.6 i386/amd64
architecture. On other architectures things can be wildly different.

Git specifics
-------------

If you want to use git version, you'll have to do some additional steps.
Otherwise, install does not differ from stable version.

First of all you have to get necessary packages:

`# pkg_add automake`\
`# pkg_add autoconf`\
`# pkg_add git`

Fetch out code from git repository following [Git -
using](Git - using "wikilink") instructions.

Then you'll have to define some environment variables:

`$ export AUTOCONF_VERSION=2.61`\
`$ export AUTOMAKE_VERSION=1.9`

Note that versions may change, so consult pkg\_info autoconf and
pkg\_info automake to define your version.

As a rule of thumb, just check, do autoconf-\$AUTOCONF\_VERSION and
automake-\$AUTOMAKE\_VERSION exist in your \$PATH.

Now you are ready to run

`$ ./autogen`

Git-specific part ends here.

Building and installing
-----------------------

If you don't want git, just download [stable
tarball](http://fluxbox.org/download/) and untar it as usual.

Now you're ready to run *configure*.

`$ ./configure --program-prefix="" --program-suffix="" --prefix=/usr/local`

<s>We set program\_prefix and program\_suffix to empty because for some
yet unknown reason default values ("NONE") contaminate the results, so
you'll get fluxbox settings placed in your \~/.NONEfluxboxNONE
directory.</s> HAHAHA DISREGARD THAT, it does not work. Investigating...

Prefix should be set to /usr/local partly to respect OpenBSD
conventions, partly to overwrite fluxbox installed from ports (if any).

Now edit the resulting Makefile, find SUBDIRS string and set it to:

`SUBDIRS = src util data`

NLS does not install properly at the time of the writing, docs are not
built properly, so we have to get rid of them. Sad but true.

Now run

`$ make`

fluxbox-1.1.1 should compile without any problems.

fluxbox-git (on 28.10.2009) stuck in src/FbTk/StringUtil.cc with

`` StringUtil.cc:87: error: `::extractLongNumber' undeclared (first use here) ``

Just edit that string and delete "::", making it:

`if (extractLongNumber(in.c_str(), result) && out >= 0) {`

and rerun make.

Ok, then su to root and:

`# make install`

Fluxbox is succesfully installed.

Starting fluxbox
----------------

If you run X using *startx* command, add startfluxbox to your .xinitrc
file using:

`$ echo "exec /usr/local/bin/startfluxbox" > ~/.xinitrc`\
`$ chmod u+x ~/.xinitrc`

Note, it will overwrite any contents if \~/.xinitrc file existed and
create it if it didn't.

Or just:

`$ startx startfluxbox`

If you use xdm to run X, it's even easier:

`$ echo "exec /usr/local/bin/startfluxbox" > .xsession`

[Setting background](Howto_set_the_background "wikilink")
---------------------------------------------------------

As on 4.6 OpenBSD version, there is no wallpaper setters shipped with it
by default. Do:

`# pkg_add feh`

or

`# pkg_add chbg`

Also some versions of fbsetbg do not work correctly in OpenBSD. If you
have something like:

`bash-4.0$ fbsetbg -f ~/.fluxbox/backgrounds/some_background.png `\
`ldd: Esetroot:: No such file or directory`\
`ldd: Command: No such file or directory`\
`ldd: not: No such file or directory`\
`ldd: found.: No such file or directory`\
`/usr/local/bin/fbsetbg[537]: wmsetbg: not found`\
`/usr/local/bin/fbsetbg[542]: gxmessage: not found`

please, edit \`which fbsetbg\` with your favourite editor, find
find\_it() function and replace

`[ -n "$1" ] && hash $1 2> /dev/null`

line with

`which $1 2>&1 > /dev/null`

[Category:English howtos](Category:English howtos "wikilink")
