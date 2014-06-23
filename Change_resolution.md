\_\_TOC\_\_

Xrandr
------

Xrandr should come with X on any distribution, and can be used to change resolution.

First run the the following command on a terminal of your choice:

`$ xrandr`

You should get output like following:

    Screen 0: minimum 320 x 200, current 1280 x 1024, maximum 4096 x 4096
    VGA-1 connected 1280x1024+0+0 (normal left inverted right x axis y axis) 280mm x 210mm
       1024x768       85.0     75.1     70.1     60.0     43.5  
       800x600        85.1     72.2     75.0     60.3     56.2  
       640x480        85.0     72.8     75.0     60.0  
       720x400        70.1  
       1280x1024_60.00   59.9* 
    DVI-I-1 disconnected (normal left inverted right x axis y axis)
    TV-1 disconnected (normal left inverted right x axis y axis)

Now you can use something like

`$ xrandr -s 1024x768`

If you also want to set the framerate, use the **-r <rate>** parameter:

`$ xrandr -s 800x600 -r 60`

To set an ugly 800x600 mode with 60 Hz refresh rate.

GUI Frontends
-------------

Another option is to use an xrandr frontend such as:

-   [arandr](http://christian.amsuess.com/tools/arandr/)
-   [lxrandr](http://wiki.lxde.org/en/LXRandR)
-   [grandr](https://launchpad.net/grandr)
-   [urandr](http://albertomilone.com/urandr.html)
-   [xramdr](http://kde-apps.org/content/show.php/xramdr?content=70521)

These make the configuration a quite a bit easier. GUI frontends to xrandr are also included in some desktop environments such as Gnome.

One option to make your setup permanent is to use arandr to export a shell script that will run xrandr and apply your screen layout settings. This can be put in your \~/.fluxbox/startup file.

Permanent solutions
===================

Xrandr does not store any configuration, meaning that needs to be set every time you start X.

The startup file
----------------

Put the "xrandr -s 1024x768" command in \~/.fluxbox/startup

Xorg.conf
---------

Make yourself root and then edit **/etc/X11/xorg.conf** (or create a /usr/share/X11/xorg.conf.d/resolution with the following block)

Search for **Section "Screen"** and you should see something like this:

`Section "Screen"`
`       Identifier      "Default Screen"`
`       Device          "geforce256"`
`       Monitor         "S/M 950p"`
`       DefaultDepth    24`
`       SubSection "Display"`
`               Depth           16`
`               Modes           "1600x1200" "1280x1024" "1024x768" "800x600" "640x480"`
`       EndSubSection`
`       SubSection "Display"`
`               Depth           24`
`               Modes           "1600x1200" "1280x1024" "1024x768" "800x600" "640x480"`
`       EndSubSection`
`EndSection`

(On multi monitor systems check the Device and Monitor so that you are modifying the lines for correct monitor)

Now you have to add the mode you want to use to the **beginning** to all those Modes lists. So if you want to use 1024x768 instead of 1600x1200 (that one is the first so it will be used as the display supports it), make the section to be like this:

`Section "Screen"`
`       Identifier      "Default Screen"`
`       Device          "geforce256"`
`       Monitor         "S/M 950p"`
`       DefaultDepth    24`
`       SubSection "Display"`
`               Depth           16`
`               Modes           "1024x768" "1600x1200" "1280x1024" "800x600" "640x480"`
`       EndSubSection`
`       SubSection "Display"`
`               Depth           24`
`               Modes           "1024x768" "1600x1200" "1280x1024" "800x600" "640x480"`
`       EndSubSection`
`EndSection`

Note that all modes must be in double quotes. You also could remove all other modes you don't need, but better have them in case your mode is not supported, it will just use some other mode. If there are no modes, X will not start and you may be stuck with commandline.

Adding a modeline
-----------------

As we saw earlier in xrand output, there is a different line:

`1280x1024_60.00   59.9*`

This is the maximum resolution of my monitor, but Xorg doesn't recognize it; so I create and apply the modeline everytime fluxbox starts. In \~/.fluxbox/startup I have:

    #screen resolution
    xrandr --newmode "1280x1024_60.00"  109.00  1280 1368 1496 1712  1024 1027 1034 1063 -hsync +vsync
    xrandr --addmode VGA-1 1280x1024_60.00
    xrandr --output VGA-1 --mode 1280x1024_60.00

The modeline is obtained with

`$ cvt 1280 1024`

The same could be achieved in /etc/X11/xorg.conf (or create a /usr/share/X11/xorg.conf.d/resolution with the following block)

    Section "Monitor"
            Identifier      "Default"
            Option          "DPMS"
            Modeline        "1280x1024_60.00"  109.00  1280 1368 1496 1712  1024 1027 1034 1063 -hsync +vsync
            Option          "PreferredMode" "1280x1024_60.00"

[Category:English howtos](Category:English howtos "wikilink") [Category:Misc howtos](Category:Misc howtos "wikilink")
