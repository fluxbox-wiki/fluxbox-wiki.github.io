==Setting the background so that transparency works==
[[Category:English howtos]]
[[Category:Integration/Startup howtos]]
__TOC__

=== What is fbsetbg and why do I need it ===
fbsetbg is a wrapper that tries to find a suitable background-setting app and then tries to set the wallpaper using that app. You don't have to configure fbsetbg, it just uses the first app it can find.

It aims to provide clear error messages in a window that make debugging problems easy.

=== Checking for the proper tools ===
First we need to make sure fbsetbg has a suitable app to use, to do this open up a terminal and run the following command as a user:

   $ fbsetbg -i

If you have one of the supported apps installed you will get a message like this:
    Esetroot is a nice wallpapersetter. You won't have any problems.

If you do not have a suitable app installed you will recieve an error message like this:
    display doesn't set the wallpaper properly. Transparency for fluxbox
    and apps like aterm and xchat won't work right with it. Consider 
    installing feh, wmsetbg (from windowmaker) or Esetroot (from Eterm) and
    I'll use them instead.

=== Setting the background in a style ===
In Fluxbox 0.9.15, rootCommand was removed from styles; however, it still functions properly in the init file. To set a background from a style, you should now use the following settings in your theme file:

           background: centered|aspect|tiled|fullscreen|random|solid|gradient <texture>|mod|none|unset
           background.pixmap: <file or directory>
           background.color: <color>
           background.colorTo: <color>
           background.modX: <integer>
           background.modY: <integer>
   

When using centered, aspect, tiled, or fullscreen, `background.pixmap' should give the full path of an image to use. When using random, `background.pixmap' gives the location of a directory containing several images, one of which is chosen at random. To set a solid background, you should specify `background.color'. The gradient textures (described more fully in `man fbsetroot') require both `background.color' and `background.colorTo'. `background.modX' and `background.modY' are specific to the `mod' background type (described more fully in `man fbsetroot'), which also requires `background.color' and `background.colorTo'. The special option `unset' is for use in user overlay files only. It specifies that fbsetbg should never be run (by default, even when `none' is set in the overlay, fluxbox will try to run "fbsetbg -z" to restore the last wallpaper).

=== Transparency does not work. What do I do? ===
Fbsetbg can use following wallpapersetters of which ONLY feh, esetroot and wmsetbg support pseudo transparency:
* Esetroot
* wmsetbg
* feh
* hsetroot
* chbg
* display
* qiv
* xv
* xsri
* xli
* xsetbg

The order is best first, worst last. So to make everything work fine, you should install something from the top of the list. Most people on #fluxbox would suggest you to install '''Feh''' as it is small and very efficient, but '''Esetroot''' (comes with '''Eterm''') is also a good choice.

=== Useful Tips and Tricks ===

==== Setting the Wallpaper on Startup ====
Since fluxbox 0.9.15 a new feature was introduced: '''[[Style overlay|Overlay]]'''.

To use it you just need a file to which ~/.fluxbox/init points to. We use the standard file ~/.fluxbox/overlay for it. make sure the line   
   session.styleOverlay: ~/.fluxbox/overlay
is in your init-file.

The overlay file can be used to set any style attributes, such as the 'background' setting described above. Setting the background in this way will override any backgrounds in styles you use.



==== Setting the Wallpaper on Startup, another way ====
Just put (or remove the comment if it's there already):

  background: none

in ~/.fluxbox/overlay

Then set the background once manually with fbsetbg. This last used wallpaper will be saved in the file ~/.fluxbox/lastwallpaper. It is later used for the -l option which is in your init file now.


[[Image:Note.png|21px|left|]]<span id="deprecated">With new versions the rootCommand way in the init file is still capable but deprecated, fluxbox calls fbsetbg internally everytime it starts. We'll keep the follow only for historical purpose.</span>
This will provide an initial background, but any styles with their own wallpapers will override it:
 session.screen0.rootCommand:    fbsetbg -l



==== Tips on working with fbsetbg ====
  $ fbsetbg -p
this will give you some very useful tips; read them slowly.

== How to have nautilus set the background ==
If you are using nautilus as your file manager and have fbsetbg working, you can add a nautilus script that will give you a context menu item to set the background when you right-click on a graphic file. Here's how to do that.

Open your favorite text editor, create a new file and add the below text to the new file:
  #!/bin/sh
  fbsetbg $@
Save the file in ~/.gnome2/nautilus-scripts with a filename of "Set Background". Make the file executable with "chmod +x filename". Now, right-click on a .png, .gif or .jpg file in nautilus, choose Scripts -> Set Background from the context menu and fbsetbg will set the background to that graphic.


== Backgrounds on Multiple Displays ==
[[Image:Note.png|21px|left|]]Don't use this method, it's here only for historical purpose. See the note [[#deprecated|above]] about rootCommand.
Using fluxbox with multiple displays is very easy yet for a noobie setting the backgrounds on them can cause a little frustration.

You can achieve different backgrounds by using the ~/.fluxbox/lastwallpaper and setting them manually the first time. <br>
Once you have the background set you then can add 
 session.screen0.rootCommand:    fbsetbg -l
 session.screen1.rootCommand:    fbsetbg -l
To your ~/.fluxbox/init file to load them on startup.


== Set a color ==
You may want to just set a color instead of a fancy wallpaper, in this case fbsetroot does the job. <br>
The procedure is the same of fbsetbg, you run it once and the command will be stored in ~/.fluxbox/lastwallpaper.

Plain gray: 
 $ fbsetroot -solid grey15
An horizontal gradient texture starting from grey to black (see the manpage for others texture strings):
 $ fbsetroot -gradient Horizontal -from grey15 -to black
A tight and grey boxed pattern on black:
 $ fbsetroot -mod 11 11 -bg black -fg grey15
Another variant:
 $ fbsetroot -mod 33 33 -bg black -fg grey15


== Disable fbsetbg / fbsetroot ==
If you want to disable the internal call because you use another way to set the background (like nitrogen for example), put

  background: unset

in ~/.fluxbox/overlay