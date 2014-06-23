Getting fluxbox Updated
-----------------------

### Using Gentoo

To get your fluxbox updated on gentoo simply just

` # emerge -u fluxbox`

Many times the **latest** fluxbox is masked so you may need to unmask the package to get the newest one in the portage tree. To unmask fluxbox simply

` # echo x11-wm/fluxbox >> /etc/portage/package.keywords`

This will make the latest and greatest fluxbox in portage unmasked for you to emerge

### Using Ubuntu and Debian

Ubuntu at times will have a package that's not as new as you would like. This is not a problem. Paultag happens to be the offical maintainer of the Debian package (also compatible with Ubuntu) and he hangs out in fluxbox IRC channel so he knows when a new release is made and accordingly he makes a package we can use. If you already have an older version of fluxbox installed I would reccomend removing it first using either synaptic or manually doing so using **apt-get**. First lets get the new package we will be installing. Open your browser and surf to <https://launchpad.net/fluxbox/+packages>

This is Fluxbox's launchpad page where you will find the latest packages. Next you should get the latest package for you distro, make sure if you are using Ubuntu to get the Ubuntu package and not the one marked for Debian users. Once you have the deb downloaded it's time to remove your old version. As sudo (or root)

` apt-get remove fluxbox`

This will remove fluxbox from your system. If you happen to have a very old package installed and have troubles with your menu and keys file, and have not done any customizing to your fluxbox that you don't mind loosing I would highly reccomend just remove your **\~/.fluxbox/** directory. If you don't wish to do this it's not required but the fixes that have been made to this new package will not go into effect on your new fluxbox unless you do this.

` $ mv ~/.fluxbox/ ~/.fluxbox.old`

Now you are ready to install the new version, so as sudo (or root) just run

` dpkg -i fluxbox*.deb`

And this will install the new version you just downloaded. If you did follow the guide and removed the \~/.fluxbox/ dir a new one was created and now you have a menu that will auto update each time you use apt-get to install and remove a package.

![](Note.png "fig:")Do note that Ubuntu and Debian packages are the same; if you use Debian you can safely install the last available for Ubuntu, but **first check** at [Debian Packages](http://packages.debian.org/fluxbox) if Fluxbox is already on [Debian Backports](http://backports-master.debian.org/Instructions/).

### Using Fedora

` $ sudo yum update fluxbox`

### Using ArchLinux

` $ sudo pacman -Sy fluxbox`

### Using Mac OS X/Fink/DarwinPorts

On Fink,

`# fink update fluxbox`

On DarwinPorts,

`$ sudo port upgrade fluxbox`

[Category:English howtos](Category:English howtos "wikilink") [Category:Integration/Startup howtos](Category:Integration/Startup howtos "wikilink")
