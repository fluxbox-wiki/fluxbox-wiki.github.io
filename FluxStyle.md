![fluxstyle screenshot](FluxStyle-1.0.jpg "fluxstyle screenshot")

### What is fluxStyle

[FluxStyle](http://code.google.com/p/fluxstyle/) is a graphical
style/theme manager for the [fluxbox window
manager](http://fluxbox.org/). Its looks and feel come from the
[gnome](http://gnome.org/) theme manager. FluxStyle started out as an
idea [I](http://errr-online.com/) had to make installs of styles eaiser,
as well as provide a user with a
[preview](http://www.tenr.de/howto/style_fluxbox/style_fluxbox.html#rules)
of what the style will look like. FluxStyle was coded in python using
pygtk as well as glade for the user interface design. The 1.0 release
will depend on [pygtk](http://pygtk.org/) 2.4 or newer, and 2.6 or newer
is prefered, as well as [libglade](http://glade.gnome.org/) 2.4.2, older
versions may or may not work so its best to have current versions of
both deps. This app works out of the box on Fedora (core 3 and 4 for
sure) as well as on [Ubuntu](http://www.ubuntu.com/) Horay and Breezy;
and possibly others. If you have gnome 2.8 or newer your system should
have all needed libs to run the app.

### How do I install fluxStyle

fluxStyle has hg access. To check it out and have the most current code;
you will need the [Mercurial](http://mercurial.selenic.com/downloads/)
package installed, and then issue the following command

` $ hg clone `[`https://fluxstyle.googlecode.com/hg/`](https://fluxstyle.googlecode.com/hg/)` fluxstyle `

There is an install file included with the hg version but it should only
be used if you know what youre doing. For fluxStyle to work you need to
have fluxbox-svn revision 4129 or newer.

### Can I help with fluxStyle

Sure there are several things that still need to be done.

-   A config file is needed
-   The ability to veiw styles from multiple locations
-   The ability to install styles to any location
-   A way to render the preview with out using a provided 'preview.jpg'

Packagers are also needed. I would like to have a deb, an rpm, a
slackware package, and as many other people who want to make a package
for what ever distro.

[Category:English howtos](Category:English howtos "wikilink")
[Category:Misc howtos](Category:Misc howtos "wikilink") [Category:Style
howtos](Category:Style howtos "wikilink")
