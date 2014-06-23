### Where to get GTK themes

You can get GTK themes from, for example, [xfce-look.org](http://xfce-look.org/index.php?xcontentmode=100) [gnome-look.org](http://gnome-look.org/index.php?xcontentmode=100) [<http://browse.deviantart.com/?qh>=&section=&q=GTK+theme deviantart.com]

### How do I install these themes?

You only need to untar those themes under **\~/.themes**, so first:

`$ mkdir ~/.themes`

and then:

`$ cd ~/.themes`
`$ tar -zxvf theme-name-here.tar.gz      or`
`$ tar -jxvf theme-name-here.tar.bz2`

Make sure you check the what engines the theme needs, usually with somethin like

`$ grep engine ~/.themes/`<theme-name>`/gtk-2.0/gtkrc`

You can most likely install them through your package manager, like:

`# apt-get install gtk2-engines-pixbuf    or`
`# apt-get install gtk2-engines-*         or`
`# emerge gtk2-engines-pixbuf`

You should get the idea.

### And to use them?

GTK2
----

Get [gtk-theme-switch](http://www.muhri.net/nav.php3?node=gts) (note that there is also a version for GTK2) or [gtk-chtheme](http://plasmasturm.org/code/gtk-chtheme/). Then just fire 'em up and you should see a nice list of all styles. Just select the one you want to use and click **Apply**. You can also use [LXAppearance](http://wiki.lxde.org/en/LXAppearance) to change the gtk-themes.

This shows you how to edit GTK settings without any extra application installed.

Install the GTK theme as shown above (extract theme to \~/.themes and icon set to \~/.icons).
Create or edit the \~/.gtkrc-2.0 file. In that file input parameters such as the following:

`#sets the font`
` gtk-font-name = "sans 8" `
` #sets the theme`
` gtk-theme-name = "Clearlooks Crystal 1.1" `
` #sets the icon theme`
` gtk-icon-theme-name = "CrystalClear-GNOME-1.0.0" `
` #shows only icons in the toolbar`
` gtk-toolbar-style = GTK_TOOLBAR_ICONS `
` #shows small icons in the toolbar`
` gtk-toolbar-icon-size = GTK_ICON_SIZE_SMALL_TOOLBAR  `
` #sets the background color in Rox back to white because some GTK themes set it to light gray`
` style "rox" = "default"`
` {`
`   bg[NORMAL] = "#ffffff"`
`   bg[ACTIVE] = "#ffffff"`
` }`
` widget_class "*Collection*" style "rox"`

Resources:

-   <http://developer.gnome.org/gtk/stable/GtkSettings.html>
-   <http://developer.gnome.org/gtk3/stable/GtkSettings.html>

You can also use a different GTK theme, icon theme and fonts for specific GTK applications. If you just want to change the GTK theme, run your application with the following command:

`$ GTK2_RC_FILES=/path/to/your/theme/gtkrc your_application`

If you like to set a custom icon theme and font, create an empty file wherever you find convenient and call it whatever you want (for example, \~/.themes/custom.gtkrc). Then fill it with your different settings:

`gtk-font-name = "sans 7"`
`gtk-theme-name = "niroki"`
`gtk-icon-theme-name = "SimplyGrey"`

Now run the application with the following command:

`$ GTK2_RC_FILES=/path/to/your/custom.gtkrc your_application`

Add the command in your menu or launcher and enjoy.

GTK3
----

To use GTK3 themes, edit (or create) the **\~/.config/gtk-3.0/settings.ini** file. Specify the theme you want with the **gtk-theme-name** parameter. For example, if you want to use the Adwaita theme, your **settings.ini** file should look like:

`[settings]`
` gtk-theme-name = Adwaita`
` gtk-icon-theme-name = SimplyGrey`
` gtk-fallback-icon-theme = gnome`
` gtk-font-name = Sans 10`
`# next option is applicable only if selected theme supports it`
` gtk-application-prefer-dark-theme = true`

That's it.

See also
--------

[How to install fonts](http://fluxbox-wiki.org/index.php?title=Install_fonts)

[Category:English howtos](Category:English howtos "wikilink") [Category:Misc howtos](Category:Misc howtos "wikilink")
