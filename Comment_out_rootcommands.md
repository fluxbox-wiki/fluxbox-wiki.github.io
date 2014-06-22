If, for example, you have installed the
[commonbox-extra](http://web.archive.org/web/20071014003020/http://distro.ibiblio.org/pub/linux/distributions/gentoo/distfiles/commonbox-styles-extra-0.2.tar.bz2)
styles from gentoo portage you will have many styles that contain a
[rootCommand](http://fluxbox-wiki.org/index.php?title=Howto_set_the_background#Setting_the_Wallpaper_on_Startup.2C_another_way)
and they will set the background for you. I personally hate that and
like to decide what I think looks best with a style.

A simple sed command will fix this up, move to the directory where you
installed the styles and run:

` $ sed -i '/^rootCommand/s|^|!|' *`

[Category:English howtos](Category:English howtos "wikilink")
[Category:Misc howtos](Category:Misc howtos "wikilink")
