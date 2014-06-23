__TOC__
[[Category:English howtos]]
[[Category:Configuration howtos]]

==How to edit the apps file==
One thing to know is: if you run fluxbox 0.9.13 or lower, when you edit the apps file while running fluxbox, on a restart or a reload of the config all changes will be reset to the previous.  For higher versions of fluxbox there is no problem.

A workaround for this problem (when you use on old version of fluxbox):

* modify the file and save your changes
* chmod 444 ~/.fluxbox/apps
* restart fluxbox
* chmod 744 ~/.fluxbox/apps


In order to obtain a skeleton configuration with the right atoms (name, class, role) for the application, pick up a random entry from the Remember submenu in the [http://fluxbox-wiki.org/index.php?title=Editing_the_windowmenu windowmenu], then edit the <code>~/.fluxbox/apps</code> as you need.

You can also find atoms by executing
   $ xprop WM_CLASS | xmessage -file - -center
and clicking onto the desired window:
 WM_CLASS(STRING) = "xterm", "XTerm"

The first field is the name, the second one the class, so in this case "xterm" is the name and "XTerm" the class.

== Apps file entries ==
The format for the apps file is:
   [app] (app-name) {count - optional}
           [Property1]  {value1}
           [Property2]  {value2}
           ...
   [end]

Each app-name can be a string or a regular expression. By default the name is matched against a windows WM_CLASS property (the first string in it, called the "instance"). You can match against the title, instance name (default), class name, or role (the WM_WINDOW_ROLE property) by explicitly specifying it. You can also specify multiple matches, which must ALL match for the properties to be applied. If a count is supplied in curly brackets at the end of the app line, then the entry will only match at most count at any time (default is to match all matching windows).

Some examples of the several others are:

* match a standard xterm
   [app] (xterm)
       ... Properties ...
   [end]

* match an xterm started like: <code>xterm -name myshell</code>
   [app] (myshell)
       ... Properties ...
   [end]

*  match any one Firefox window (the instance name is "Gecko") 
   [app] (class=Firefox-bin) {1}
       ... Properties ...
   [end]

* match the gaim buddy list window
   [app] (role=buddy_list)
       ... Properties ...
   [end]

* match an rdesktop window to a particular host
   [app] (title=rdesktop - hostname.*)
       ... Properties ...
   [end]

* hides Firefox's transient windows from the toolbar
   [transient] (name=firefox-bin) (class=Firefox-bin)
       [IconHidden]  {yes}
   [end]

A transient window is a window dialog like 'Save as..' or 'Print', we can apply any kind of rule to them, here's another example:

* maximizes Firefox's print window
   [transient] (name=firefox-bin) (class=Firefox-bin) (title=Print)
       [Maximized]	{yes}
   [end]


For the complete list of the properties that can be defined in each [app] entry see the SETTINGS section in the [http://fluxbox.org/help/man-fluxbox-apps.php fluxbox-apps] manpage.

Each name must be enclosed in square brackets, and the value is generally in curly brackets.

The apps file also allows you to specify applications that should be started. Could be used to specify the screen, not the workspace, on which the application should be started. Startup is not yet setable by menu.

Finally, you can set windows to group together by using the `apps' file. This is achieved with either regular expressions using:
   [app] (property=expr) ... {number}

Property can be one of the following tags:
* name - the name of the window (the first field of WM_CLASS)
* class - class of the window (the second field of WM_CLASS) 
* title - title of the window ( WM_NAME property)
* role - role of the window (the WM_WINDOW_ROLE property)

If no `property' is specified, the name property is assumed. You can find out the value for these fields for a particular window by running <code>[http://www.linuxmanpages.com/man1/xprop.1x.php xprop(1)]</code>.

Here an example of how an apps file can look like:
  [startup] {xterm}
# match anything ending with term, up to 2 instances
  [app] (.*[tT]erm) {2}
# match anything with `gaim' in the title
  [app] (title=.*gaim.*)
  [app] (kate)
          [Dimensions]  (WINCENTER) {1022 747}
          [Position]    {0 0}
          [Close]       {yes}
  [end]
  [app] (konqueror)
          [Workspace]   {1}
          [Dimensions]  {1006 749}
          [Position]    {16 0}
          [Jump]        {yes}
  [end]
# hide the label in the toolbar for the window dialog (like 'open file', 'save as, etc.) 
  [transient] (name=firefox-bin) (class=Firefox-bin)
          [IconHidden]  {yes}
  [end]
  [app] (name=mirage) (class=Mirage)
          [Dimensions]  {1015 730}
          [Position]    (UPPERLEFT)     {87 0}
  [end]
# start all aterms without decorations
  [app] (aterm)
          [Deco]        {NONE}
  [end]
# start the urxvt called 'screen' without decorations
# the command needed to run an unique instance of urxvt is ''urxvt -name screen''
  [app] (name=screen) (class=URxvt)
          [Deco]        {NONE}
  [end]

== Grouping apps via the apps file ==
To automatically tab together new windows, place a [group] tag around several [app] tags, with an [end] tag to indicate the end of the group. You should not use an [end] tag for individual apps in a group. You can specify dimensions, position, etc. for the group as for normal app entries.

Fluxbox also can group programs using the file <code>~/.fluxbox/groups</code>.

[[Image:Note.png|21px|left|]] the groups file is '''deprecated''' since version 0.9.1 in favor of grouping using the '''apps''' file, since it is much more powerful. The groups file only groups windows on the same workspace, whereas the apps file searches all workspaces by default.

To replicate the groups file's behavior with the apps file, use `[group] (workspace)', which was introduced in version 1.0rc3.

Here is a short example of an apps file:
# a group with all windows called "special-term",
# appears on layer 4 (bottom)
  [group]
      [app] (special-term)
          [Layer] {4}
  [end]
  
# a group that only looks for windows on the current workspace
  [group] (workspace=[current])
      [app] (firefox-bin) (title=.*Mozilla Firefox.*)
      [app] (opera)
          [Dimensions]    {800 600}
          [Position]      (UPPERRIGHT)      {0 0}
  [end]
  [group]  (workspace=[current])
      [app] (name=xterm) (class=XTerm)
  [end]

Note that when you are testing your [group] settings, they will only be applied to newly created windows, NOT windows already opened.  Existing windows will not appear to be in the group until restarted, you'll need to start two new windows to see the grouping work.