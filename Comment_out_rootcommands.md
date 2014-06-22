[[Category:English howtos]]
[[Category:Misc howtos]]
If, for example, you have installed the [http://web.archive.org/web/20071014003020/http://distro.ibiblio.org/pub/linux/distributions/gentoo/distfiles/commonbox-styles-extra-0.2.tar.bz2 commonbox-extra] styles from gentoo portage you will have many styles that contain a [http://fluxbox-wiki.org/index.php?title=Howto_set_the_background#Setting_the_Wallpaper_on_Startup.2C_another_way rootCommand] and they will set the background for you. I personally hate that and like to decide what I think looks best with a style.

A simple sed command will fix this up, move to the directory where you installed the styles and run:
  $ sed -i '/^rootCommand/s|^|!|' *