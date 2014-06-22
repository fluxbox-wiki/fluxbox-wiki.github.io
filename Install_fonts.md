How to install fonts
--------------------

So you need some new fonts ? Or you downloaded a bunch of nice fonts
from [1001fonts](http://www.1001fonts.com),
[fontifile](http://www.fontfile.com),
[acidfonts](http://www.acidfonts.com),
[urbanfonts](http://www.urbanfonts.com/),
[debianfonts](http://fonts.debian.net/),
[dafont](http://www.dafont.com/) ?

How do I install these fonts in my linux box ?? huh .. Here is where
Fluxmod comes into action with a nice guide that tells you how to do it.

### Installing fonts the first time

​1. Make a font dir in your \$HOME:

`$ mkdir ~/.fonts`

​2. Copy the fonts you want to have installed into **\~/.fonts/**

​3. Regenerate font cache (as user):

`$ fc-cache -fv`

That should give something like this:

`fc-cache: "/usr/X11R6/lib/X11/fonts/Type1":`\
`caching, 29 fonts,0 dirs`\
`fc-cache: "/usr/X11R6/lib/X11/fonts/sharefont": caching,21 fonts, 0 dirs`\
`fc-cache: "/usr/X11R6/lib/X11/fonts/truetype": caching, 30 fonts, 0 dirs`\
`fc-cache: "/usr/share/fonts": caching, 0 fonts, 6 dirs`\
`fc-cache: "/usr/share/fonts/ttf-bitstream-vera": caching, 10 fonts, 0 dirs`\
`fc-cache: "/usr/share/fonts/ttf": caching, 0 fonts, 1 dirs`\
`fc-cache: "/usr/share/fonts/ttf/ja": caching, 0 fonts, 2 dirs`\
`fc-cache: "/usr/share/fonts/ttf/ja/aqua": caching, 1 fonts, 0 dirs`\
`fc-cache: "/usr/share/fonts/ttf/ja/mikachan": caching, 4 fonts, 0 dirs`\
`fc-cache: "/usr/share/fonts/default": caching, 0 fonts, 1 dirs`\
`fc-cache: "/usr/share/fonts/default/Type1": caching, 35 fonts, 0 dirs`\
`fc-cache: "/usr/share/fonts/freefont": caching, 78 fonts, 0 dirs`\
`fc-cache: "/usr/share/fonts/corefonts": caching, 30 fonts, 0 dirs`\
`fc-cache: "/usr/X11R6/lib/X11/fonts/75dpi": caching, 349 fonts, 0 dirs`\
`fc-cache: "/usr/X11R6/lib/X11/fonts/100dpi": caching, 358 fonts, 0 dirs`\
**`fc-cache:` `"/home/ikaro/.fonts":` `caching,` `205` `fonts,` `2`
`dirs`**\
**`fc-cache:` `"/home/ikaro/.fonts/artwiz":` `caching,` `16` `fonts,`
`0` `dirs`**\
**`fc-cache:` `"/home/ikaro/.fonts/lfp-fix":` `caching,` `68` `fonts,`
`0` `dirs`**\
`fc-cache: succeeded`

Please note the 3 last lines, they show that it has cached some 300
fonts under \~/.fonts (where you installed them). If you don't see those
lines, you did something wrong :|

Now restart X, or better, run

`$ xset fp rehash`

and you can use the new fonts in your applications.

Check the right name you want to use with **fc-list**:

`$ fc-list | grep -i zekton`\
` Zekton:style=Regular`

As you can see the font name is *Zekton* and you can use it, for
example, in your style:

`*.font: Zekton-8`

### Post Scriptum

The artwiz fonts are not scalable, that means that its size its FIXED .
Scalable fonts cant be used in terminals, although xterm supports AA,
you will end up with a terminal with \_huge\_ fonts, and that doesn't
look so good. You can try it your self with : **aterm -fn verdana** and
then try again with 'aterm -fn nu' See the difference ?

**Originally published by ikaro on fluxmod.dk**

See also
--------

[How to change your GTK theme, font, icon
theme](http://fluxbox-wiki.org/index.php?title=Using_gtk_themes)

[Category:English howtos](Category:English howtos "wikilink")
[Category:Misc howtos](Category:Misc howtos "wikilink")
