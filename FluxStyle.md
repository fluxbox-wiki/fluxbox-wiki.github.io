[[Image:FluxStyle-1.0.jpg|thumb|fluxstyle screenshot]]
===What is fluxStyle===
[[Category:English howtos]]
[[Category:Misc howtos]]
[[Category:Style howtos]]

[http://code.google.com/p/fluxstyle/ FluxStyle] is a graphical style/theme manager for the [http://fluxbox.org/ fluxbox window manager]. Its looks and feel come from the [http://gnome.org/ gnome] theme manager. FluxStyle started out as an idea [http://errr-online.com/ I] had to make installs of styles eaiser, as well as provide a user with a [http://www.tenr.de/howto/style_fluxbox/style_fluxbox.html#rules preview] of what the style will look like. FluxStyle was coded in python using pygtk as well as glade for the user interface design. The 1.0 release will depend on [http://pygtk.org/ pygtk] 2.4 or newer, and 2.6 or newer is prefered, as well as [http://glade.gnome.org/ libglade] 2.4.2, older versions may or may not work so its best to have current versions of both deps. This app works out of the box on Fedora (core 3 and 4 for sure) as well as on [http://www.ubuntu.com/ Ubuntu] Horay and Breezy; and possibly others. If you have gnome 2.8 or newer your system should have all needed libs to run the app.

===How do I install fluxStyle===
fluxStyle has hg access. To check it out and have the most current code; you will need the [http://mercurial.selenic.com/downloads/ Mercurial] package installed, and then issue the following command
  $ hg clone https://fluxstyle.googlecode.com/hg/ fluxstyle 
There is an install file included with the hg version but it should only be used if you know what youre doing. For fluxStyle to work you need to have fluxbox-svn revision 4129 or newer.

===Can I help with fluxStyle===
Sure there are several things that still need to be done.

*A config file is needed
*The ability to veiw styles from multiple locations
*The ability to install styles to any location
*A way to render the preview with out using a provided 'preview.jpg'
Packagers are also needed. I would like to have a deb, an rpm, a slackware package, and as many other people who want to make a package for what ever distro.