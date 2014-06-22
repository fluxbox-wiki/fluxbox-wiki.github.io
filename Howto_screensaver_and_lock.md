===How to lock the screen===
[[Category:English howtos]]
[[Category:Misc howtos]]
Locking the screen means that nobody can use the computer without giving your password first.
You need some locking programs. here are some
* [http://darkshed.net/projects/alock alock]
* [http://www.tux.org/~bagleyd/xlockmore.html xlock / xlockmore]
* [http://tools.suckless.org/slock slock]

Then just add an entry for those in your menu or add a keybinding or even an icon with idesk or fbdesk.

Please note though that Linux/unix/bsd is multi-users system so someone else may come, switch to other console (ctrl + alt + f?) and then enter his/her username and password and use the computer. He/she cannot access your files or running programs. If you don't like this behaviour, get something like [http://freecode.com/projects/vlock vlock], or try [https://github.com/MatenViro/vt-switch-locker VT-Switch-Loker] project.

===A screensaver?===

You need some program for screensavers too...
* [http://www.jwz.org/xscreensaver/ xscreensaver]
* [http://www.tux.org/~bagleyd/xlockmore.html xlockmore]
* [http://live.gnome.org/GnomeScreensaver gnome-screensaver]
* [http://www.reallyslick.com/ really slick screensavers]
* [http://rss-glx.sourceforge.net/ Really Slick Screensavers Port to GLX]
* [http://electricsheep.org/ electricsheep]

These have a but different behaviours. For example, xlockmore launches the screensaver when you launch the program. So you need an icon/menuitem/keybind for it. XScreensaver runs on background (add it to '''~/.fluxbox/startup''') and after a certain amount of idling launches the screensaver.

There are several lock utilities that launch xscreensaver when you lock, these include [http://xscreensaverapp.sourceforge.net/ XScreenSaver.App] and [http://gkrellshoot.sourceforge.net/ GkrellShoot]