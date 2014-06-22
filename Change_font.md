__TOC__
[[Category:English howtos]]
[[Category:Style howtos]]
First of all an important fact to know is that fluxbox doesn't control the font of external apps such as firefox or k3b. Those fonts are controlled by their related toolkits (gtk, qt,...), fluxbox fonts are '''only''' for the toolbar, the windowtitle and the menu (rootmenu, windowmenu, toolbarmenu...).


==Fluxbox 0.9.15 and newer==
You should use [[Style overlay]] to change the appearance of your fonts, it is much easier than changing individual styles.

==Fluxbox prior to 0.9.15==
You can change them easily in the style file. Search in this file for the lines that say <tt>*font:  <fontname></tt>.

If you don't know where your stylefile is located then copy/paste the following bash-script to a file, save it, make it executable and finally execute it :

 #!/bin/bash
 THEME=$(grep -i "^.*\.stylefile:.*$" ~/.fluxbox/init | cut -d: -f2)
 if [ -d $THEME ]
 then
    exec vi $THEME/theme.cfg
 else
    exec vi $THEME
 fi



Possible lines in your hopefully now opened style file can be: 
   menu-title (the title of all fluxbox-menus you use)
      '''menu.title.font: <fontname>'''

   frame (the entries that are in every menu)
     '''menu.frame.font: <fontname>'''

   window (the font of the title of every window)
     '''window.font: <fontname>'''

   clock (yeah, it's the fluxbox clock)
      '''toolbar.clock.font: <fontname>'''

   workspace (the font of the workspace label)
      '''toolbar.workspace.font: <fontname>'''

   iconbar (the label of the application the iconbar is holding)
     '''toolbar.iconbar.focused.font: <fontname>''' 
     '''toolbar.iconbar.unfocused.font: <fontname>'''

== Fontnames ==
if using xft-fonts (ttf-fonts) you use them like this: '''<fontname>-size'''. You need to have libxft installed to use such fonts.

You can set them bold by adding ":bold"; the next line will give you the tahoma font in bold, with a size of 12:
   tahoma-12:bold

or add a shadow effect with ":shadow":
   tahoma-12:shadow

or both:

   tahoma-12:bold,shadow


If using x-fonts please run "xfontsel" or any similar application to find out what the right names are. For example:
   -misc-*-*-*-*-*-*-200-*-*-*-*-*-*


furthermore you can make fluxbox try to load several fonts
   arial-10|-artwiz-snap-*-

that will cause fluxbox to load (if compiled with xft) arial-10, otherwise, if the loading fails, it will load a different xft-font. while a fluxbox not compiled with xft support will try to load the artwiz-font. if everything fails all will fall back to "fixed". so in the end it will always load a font even though it is not the one you have set in the style.

== Fonteffects ==
Since the release of fluxbox 0.9.14 the handling of fonteffect changed a little bit. You have to specify them in a separate line now and not as an "attribute" like before.

This options are only available for xft fonts.

'''Shadow:'''
   *.font.effect: shadow
   *.font.shadow.color: <color>
   *.font.shadow.x: <int>


'''Halo'''
   *.font.effect: halo
   *.font.halo.color: <color>

You can set one effect either a shadow or a halo.

Here's an example of what it can look like:
   menu.title.font: sans-8:bold
   menu.title.font.effect: shadow
   menu.title.font.shadow.color: #ffffff
   menu.title.font.shadow.x: 2
   menu.title.font.shadow.y: 5
   ----
   [http://tenr.de/howto/style_fluxbox/rootmenu2.png example menu]