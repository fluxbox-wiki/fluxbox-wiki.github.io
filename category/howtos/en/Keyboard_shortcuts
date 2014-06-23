__TOC__
[[Category:English howtos]]
[[Category:Configuration howtos]]
== For version 1.1.1 and later ==
Please refer to the manpage '''fluxbox-keys(5)''', as it is more up-to-date than this wiki page.  Some of the sections below may serve as a useful supplement to the man page.

== How to use the keys file ==
The keys file is usually ~/.fluxbox/keys. It can be edited with an editor of your choice. When you're done editing, select "Reload config" from the menu for your changes to take effect. As an alternative, you can bind a key to '''Reconfigure''' as described below. The following is basically stolen from [http://darkshed.net/files/rcs/fluxbox/keys.html akira's keyfile]. Take a look at it since it's the most complete one.

The syntax for a keybinding is quite easy:

   <mod> [<mod> <mod>] key [key key] :command <command_options>

<mod> is what we call a "modifier" and you can use 'xmodmap -pm' from the command-line to see what modifiers are available. Typical modifiers to be use in the keys file are:
   Mod1    == Alt
   Mod4    == Windows key
   Control == Ctrl
   Shift   == Shift

If you want to find out the name of a key, open a terminal and run 'xev'. When the "Event Tester" window has focus, it will capture mouse movement, mouse clicks, and keypress events, then provide output in the terminal. If a key you want to use has no name, you can use its keycode and Fluxbox will still understand.

Here are a few examples:
   Control i :ExecCommand xterm   ''# Ctrl+i will bring up an xterm''
   Mod4 4 :Workspace 4            ''# Windowskey+4 will change to workspace 4''
   None F12 :ExecCommand firefox  ''# F12 will start Firefox''
   Control Mod1 r :exec fbrun     ''# Ctrl+Alt+r will bring up the Fluxbox command dialog''
   Mod1 Shift F4 :KillWindow      ''# Alt+Shift+F4 kills the focused window''
   Mod1 113 :exec xterm           ''# Just to show the keycode usage''

A basic, common command is '''ExecCommand''', or '''Exec''' if you like it shorter. You can execute apps, scripts (take care of $PATH), set things via 'xset' and so on with it.

===Some things to know===
* Commands are case-insensitive
* Workspace numbering starts at 1
* Some commands have synonyms
* The space between the last key and the ":" is '''mandatory'''.

===Fluxkeys===

'''Caution:''' Currently the fluxkeys utility is out of date and will break your ~/.fluxbox/keys file.

==Mouse Events==
Since SVN r4704, Fluxbox now handles mouse events in the keys file. ([[How_to_build_fluxbox_from_source#What_is_git_version_and_why_should_I_use_it.3F|details]])

Figuring out the name of a mouse event is similar to figuring it out for a key. Just run 'xev' like before and use the button/wheel in the "Event Tester" window. It usually generates a "ButtonPress" event, which will include the button number. Mouse buttons also add a new modifier called '''OnDesktop''', which makes the mouse event only trigger if it's on the desktop (AKA root window).  This only works with mouse buttons and has to be called before each mouse event that wants to be triggered only on the root window.

For example, the typical Fluxbox behavior of mouse wheel up/down on root window to change desktop would be:
   OnDesktop       Mouse4 :nextWorkspace
   OnDesktop       Mouse5 :prevWorkspace

You can also keychain mouse events.

If your keys file didn't get updated automatically, the default behaviour comes with following:
   OnDesktop Mouse1 :HideMenus
   OnDesktop Mouse2 :WorkspaceMenu
   OnDesktop Mouse3 :RootMenu
   OnDesktop Mouse4 :PrevWorkspace
   OnDesktop Mouse5 :NextWorkspace
   
   # In 1.1 versions of fluxbox:
   OnToolbar Mouse4 :PrevWorkspace
   OnToolbar Mouse5 :NextWorkspace
   OnWindow Mod1 Mouse1 :MacroCmd {Raise} {Focus} {StartMoving}
   OnWindow Mod1 Mouse3 :MacroCmd {Raise} {Focus} {StartResizing NearestCorner}
   OnWindow Mod1 Mouse2 :Lower
   OnTitlebar Control Mouse1 :StartTabbing
   OnTitlebar Double Mouse1 :Shade
   OnTitlebar Mouse2 :Lower
   OnTitlebar Mouse3 :WindowMenu

==Keychains==
Fluxbox can handle keychains in a similar way to emacs. For example:

   Control n Mod1 n :Close                    ''# ctrl+n alt+n will close the focused window''
   None F11 F12 :ExecCommand ssh example.com  ''# F11 F12 runs 'ssh'''

Note that to use a keychain without modifiers, "None" should only be used once. "None F11 None F12" will not work. Use "None F11 F12" as shown above instead.

== Fluxbox Keycommands ==
There are plenty of internal commands to make life easier. Use them the same way as above just exchange the '''Exec[Command]''' part with the one you want to use.

===Window Manager Commands===
   Restart <argument>     ''# Restarts fluxbox, argument can be the binary of another window manager to which will be switched''
   Quit                   ''# Exits Fluxbox''
   Exit                   ''# Exits Fluxbox''
   Reconfigure            ''# Reloads the config''
   Reload Style           ''# Reloads the style if any files were changed''
   SetStyle <argument>    ''# Sets a specific style. useful for a standard style for testing purposes''
   ExecCommand <argument> ''# Executes a command. look above for what the argument can be''
   Exec <argument>        ''# Executes a command. look above for what the argument can be''


===Currently Focused Window Commands===
   Fullscreen                           ''# Makes the focused window fullscreen covering all components, even if they are set to a higher layer''
   Minimize                             ''# Minimizes the focused window. equivalent to the windowbutton''
   MinimizeWindow                       ''# Minimizes the focused window. equivalent to the windowbutton''
   Iconify                              ''# Minimizes the focused window. equivalent to the windowbutton''
   Maximize                             ''# Maximizes the focused window. equivalent to the windowbutton''
   MaximizeWindow                       ''# Maximizes the focused window. equivalent to the windowbutton''
   MaximizeHorizontal                   ''# Maximizes the focused window horizontally''
   MaximizeVertical                     ''# Maximizes the focused window vertically''
   ResizeTo <width> <height>            ''# Resizes the focused window to the specified values''
   Resize <delta-width> <delta-height>  ''# Scroll down for some further information on this command''
   ResizeHorizontal <delta-width>       ''# Scroll down for some further information on this command''
   ResizeVertical <delta-height>        ''# Scroll down for some further information on this command''
   MoveTo <x> <y> <ref corner>          ''# Scroll down for some further information on this command''
   Move <delta-x> <delta-y>             ''# Scroll down for some further information on this command''
   MoveRight <delta-x>                  ''# Scroll down for some further information on this command''
   MoveLeft <delta-x>                   ''# Scroll down for some further information on this command''
   MoveUp <delta-y>                     ''# Scroll down for some further information on this command''
   MoveDown <delta-y>                   ''# Scroll down for some further information on this command''
   Raise                                ''# Raises the focused window''
   Lower                                ''# Lowers the focused window''
   RaiseLayer                           ''# Raises the focused window one layer.''
   LowerLayer                           ''# Lowers the focused window one layer.''
   SetLayer <layer-name>                ''# Sets the focused window on the specified layer''
   Close                                ''# Closes the focused window. same as the windowbutton''
   Shade                                ''# Shades the focused window. same as the windowbutton''
   ShadeWindow                          ''# Shades the focused window. same as the windowbutton''
   Stick                                ''# Makes the focused window sticky/unsticky. same as the windowbutton''
   StickWindow                          ''# Makes the focused window sticky/unsticky. same as the windowbutton''
   ToggleDecor                          ''# Makes the focused window borderless''
   SendToWorkspace <number>             ''# Sends the focused  window to the workspace given by number''
   SendToNextWorkspace <number>         ''# Sends the focused window to the next workspace given by number''
   SendToPrevWorkspace <number>         ''# Sends the focused window to the previous workspace given by number''
   TakeToWorkspace <number>             ''# Sends the focused  window to the workspace given by number and switches the view to it''
   TakeToNextWorkspace <number>         ''# Sends the focused window to the next workspace given by number and switches the view to it''
   TakeToPrevWorkspace <number>         ''# Sends the focused window to the previous workspace given by number and switches the view to it''
   KillWindow                           ''# Kills the focused window''
   NextTab                              ''# Switches to the next tab of the focused window''
   PrevTab                              ''# Switches to the previous tab of the focused window''
   MoveTabLeft                          ''# Moves the focused tab to the left''
   MoveTabRight                         ''# Moves the focused tab to the right''
   DetachClient                         ''# Detaches the focused tab from a group''
   SetHead <int>                        ''# Sets the default head for a window --> xinerama''
   FocusUp                              ''# Sets the focus to the window north of the focused one''
   FocusDown                            ''# Sets the focus to the window south of the focused one''
   FocusLeft                            ''# Sets the focus to the window west of the focused one''
   FocusRight                           ''# Sets the focus to the window east of the focused one''
   StartResizing <what>                 ''# Starts resizing the focused window (fore more see below...)''

===Workspace Commands===
   NextWorkspace <by-number>   ''# Switches "number" workspaces to the right''
   PrevWorkspace <by-number>   ''# Switches "number" workspaces to the left''
   RightWorkspace <by-number>  ''# Switches "number" workspaces to the right without wrapping around''
   LeftWorkspace <by-number>   ''# Switches "number" workspaces to the left without wrapping around''
   Workspace <number>          ''# Switches to the workspace given by number''
   NextWindow <bitmask>        ''# Scroll down for further information''
   PrevWindow <bitmask>        ''# Scroll down for further information''
   NextGroup <bitmask>         ''# Same as NextWindow but cycles through groups only''
   PrevGroup <bitmask>         ''# Same as PrevWindow but cycles through groups only''
   ArrangeWindows              ''# Arranges windows :)''
   ShowDesktop                 ''# Iconifies all windows of the current workspace''
   RootMenu                    ''# Pops up the right-click menu''
   WorkspaceMenu               ''# Pops up the middle-click menu''
   WindowMenu                  ''# Pops up the windowtitle menu''
   SetWorkspaceName <name>     ''# Renames the current workspace''
   Deiconify <mode> <dest>     ''# Restores minimized windows''

===Special Commands===
   MacroCmd                                     ''#scroll down for further information''
   ToggleCmd                                    ''#scroll down for further information''
   ReloadStyle                                  ''#reloads the style''
   SetResourceValue <rc_name> <resource> value  ''#to be done...no one will ever need this!''
   BindKey <key><value>: <action>               ''#creates an "on the fly" keycommand''
   ChangeWorkspace                              ''called each time the workspace changes''

'''Explanation'''
* '''TakeToWorkspace''' will send you along with the window to the selected workspace. '''SendToWorkspace''' just sends the window.
* '''PrevWindow'''/'''NextWindow''' parameters take a bitmask:
:* 0 or unspecified = Default/current behavior - no skipping
:* 1 cycle groups
:* 2 skip stuck windows
:* 4 skip shaded windows
:* 8 cycle linear (use the same order every time)
For example, the following will skip any window that's, stuck or shaded since 6 = 4 + 2.
   Mod1 tab :NextWindow 6
Configuration file version 13 (look for "FBCV13" in your keys file) requires this syntax. This example cycles through all windows on the current workspace (and current head your mouse is on):
   Mod1 Tab :NextWindow (workspace=[current]) (head=[mouse])
* '''Deiconify''' has options for which windows to deiconify and which workspace they should be restored to.
:* mode: All | AllWorkspace | Last | LastWorkspace
:* dest: Current | Origin
* '''BindKey''' will append key string and action to your keys file and bind the key.
* A delta value means the difference between the current setting and the requested setting. Assume your window 100 is pixels wide.
   Mod1 r :ResizeHorizontal 10
When you use that key it would increase the size of your window to 110 pixels. If you had used the following command, it would have decreased the size by 10, setting it to 90 pixels.
   Mod1 R :ResizeHorizontal -10
* The syntax of the '''MoveTo''' command is the following:
   :MoveTo [int|*] [int|*] [reference corner]
The wildcard '''*''' means "use current value" and 'reference corner' is one of the following:
:* Left, Right
:* Upper, UpperLeft, UpperRight
:* Lower, LowerLeft, LowerRight
Examples:
   :MoveTo 0 * Left       -> snap to left workspace edge
   :MoveTo * 0 Lower      -> snap to lower workspace edge
   :MoveTo 0 0 UpperRight -> snap to upper right workspace corner

* Grouped parameters of the '''StartResizing''' command (case doesn't matter!):
:* NearestCorner, NearestEdge
:* TopLeft, Top, TopRight
:* Left, Center, Right
:* BottomLeft, Bottom, BottomRight
Examples:
   :OnWindow Mod1 Mouse3 :StartResizing BottomRight      # Fluxbox default (?)
   :OnWindow Mod1 Mouse3 :StartResizing NearestCorner    # used in most other window manager

* '''ChangeWorkspace'''

Examples:
   # changes you background image (requires images bg0.png...bgX.png in ~/.fluxbox/ directory):
   :ChangeWorkspace :Exec fbsetbg ~/.fluxbox/bg$(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}').png
   # displays your workspace name.
   :ChangeWorkspace :Exec osdctl -s $(xprop -root _NET_CURRENT_DESKTOP _WIN_WORKSPACE_NAMES | sed 's/[,"]//g' | awk 'NR==1 {cur=$3} NR==2 {name=$(3+cur); print name ","}')

* '''RaiseLevel/LowerLevel'''
Note that there is a layer between named layers so you need to ''RaiseLayer'' twice to get from Normal layer to Top layer.

=== MacroCmd Syntax ===

   Mod1 r :MacroCmd {command1} {command2} {command3}...

'''MacroCmd''' allows you to execute more than one command with a single keybinding. The commands given to '''MacroCmd''' will be executed in the order they are supplied, and can be either '''Exec[Command]''' or internal commands such as '''ShowDesktop'''.

Example:

   Mod1 u :MacroCmd {Moveto 10 5} {ResizeTo 1260 590}
   Mod1 o :MacroCmd {MoveTo 10 600} {ResizeTo 1250 380}

The first command could be used to move and resize your browser to the upper corner of the screen, while the second could be used in a terminal windows, to move and resizes it below.

=== ToggleCmd Syntax ===

   Mod1 t :ToggleCmd {command1} {command2}
This alternates between the given commands each time you press Mod1 + t. For example, you could use '''ShowDesktop''' and '''DeIconify all originquiet'''. The command to make Windows-key + m minimize all windows, and then bring them back is:
   Mod4 m :ToggleCmd {ShowDesktop} {DeIconify all originquiet}

=== Combining ToggleCmd and MacroCmd ===

   <mod> <key> :ToggleCmd {MacroCmd {<command_1>} {<command_2}} {MacroCmd {<command_1>} {<command_2}}

'''ToggleCmd''' and '''MacroCmd''' can be used in unison in order to use one keybinding for two macros. It's an advanced way to use keys, but it may not be of any value to you. Be creative and see what you can come up with.

==Minimalistic Application Usage==

Fluxbox promotes minimalistic usage, and to keep in-line with this approach, you can prevent more than one instance of an application to be 

===wmctrl===

Check if you have [http://www.sweb.cz/tripie/utils/wmctrl wmctrl] installed

 $ type wmctrl

If it is installed, you will be presented with the path, if not, you will be told. If not please install using your distrobution's package install method.

The easiest way to switch to application if it exists or launch it if not is to use wmctrl's -a option.
 $ wmctrl -a firefox || firefox

This will search for a window with `firefox' in its title (case-insensitive), the `||' will create a new firefox instance if wmctrl couldn't find one. You can then add this to your keys file:
 Control Mod1 f :ExecCommand wmctrl -a firefox || firefox 

In general, you can search for anything and open anything else, the syntax is
 wmctrl -a $SEARCHTERM || $APP


Another longer approach is below:

Save the script below as 'find_app.sh' (anywhere in your filesystem)

 #!/bin/bash
 # Find_app
 # Author: Lucas van Staden (lvs at dedmeet.com / www.dedmeet.com)
 # This little script will try and find the application attempting to start
 # in the running processes, and if found, focus the application
 # if not found, a new instance will start
 # usage:
 # find_app.sh <application with full path>
 # params
 # 1 - application to start (full path)
 # helper applications
 WMCTRL=`which wmctrl`;
 GREP=`which grep`;
 APPLICATION=$1;
 BASENAME=`basename $APPLICATION`;
 BASENAME=`echo $BASENAME | tr "[:upper:]" "[:lower:]"`
 FOUND=0;
 function findwindow {
 # 1 = BASENAME
 # 2 = WMCTRL
 # 3 = GREP
         IFS=$'\n';
         for RUNNING in `$2 -l -x`
         do
                 if [ `echo $RUNNING | tr "[:upper:]" "[:lower:]" | $3 -c $1` -gt 0 ]
                 then
                         HOSTNAME=`hostname`
                         WINDOW=${RUNNING#*${HOSTNAME} }
                         $2 -a $WINDOW
                         FOUND=1;
                 fi;
         done
 }
 findwindow $BASENAME $WMCTRL $GREP; 
 if [ $FOUND -eq 0 ]
 then
         $APPLICATION &
         sleep 2;
         # Try and find the application, after opened
         findwindow $BASENAME $WMCTRL $GREP;
         if [ $FOUND -eq 0 ]
         then
                 # Still not found, wait a bit more, and try again
                 sleep 3;
                 findwindow $BASENAME $WMCTRL $GREP;
         fi
 fi

Make sure the script is executable

 $ chmod +x find_app.sh

Now in your keys file, in place of calling the application directly, use the wrapper script above, for example the following line in the keys file

 Control Mod1 f :ExecCommand ~/.fluxbox/scripts/find_app.sh /usr/bin/firefox

will try and start firefox, but if firefox is already running, then it will be set as the active, top-most application, and you will be moved to the desktop where it is running. If firefox is not running, it will be started as usual, and after a short delay, you will be moved to the desktop where it started up.

You can now use the keypress, not just to start an application, but to find an open instance.

===xdotool===

Refer to posts here: [https://bbs.archlinux.org/viewtopic.php?pid=624950]

 #!/bin/bash 
 #
 # Show an application window or launch the application if no window
 # could be found. 
 #
 # Requires xdotool. (http://www.semicomplete.com/projects/xdotool)
 #
 # To "show" means "switch to the window's desktop, then raise and
 # focus the window."
 # 
 # If the --move option is supplied, the window will be moved to the
 # current desktop before raising and focusing it.
 #
 # The method for finding an existing window that is associated with
 # the supplied command relies on the assumption that the basename of
 # the first word of the command matches either the "name" or "class"
 # portion of the window's WM_CLASS property.
 #
 # See http://bbs.archlinux.org/viewtopic.php?id=80554 for details.
 #
 # Author: Henning Bekel <h.bekel at googlemail.com>. Inspired by a
 # similar script written by Lucas van Staden <lvs at dedmeet.com /
 # www.dedmeet.com> 
 
 usage () {
     echo "Usage: $(basename $0) [-m|--move] command"
     echo
     echo "       -m, --move : move the window to the current desktop instead of"
     echo "                    switching to the desktop the window is at."
     exit 1
 }
 
 # show usage if no arguments were given or --help was requested
 <nowiki>[[</nowiki> $# -eq 0 || "$1" =~ ^(-h|--help)$ <nowiki>]]</nowiki> && usage 
 
 move=0 
 wid=''  
 
 # test for --move option
 if <nowiki>[[</nowiki> "$1" =~ ^(-m|--move)$ <nowiki>]]</nowiki>; then
     move=1
     shift
 fi
 
 mapped? () {
     # test wether a window exists whose WM_CLASS name or class
     # property matches the binary name supplied. Not using --title
     # assures we don't switch to some window which happens to contain
     # the binary name as well (i.e. a web browser). 
 
     wid="$(xdotool search --name --class $(basename "$1") | head -1)"
     <nowiki>[[</nowiki> "$wid" =~ ^[0-9]+$ <nowiki>]]</nowiki>
 } 
 
 show () {
     # show the window, that is:
     # 1. move the window to the current desktop if requested
     # 2. switch to the window's desktop, raise and focus 
 
     if <nowiki>[[</nowiki> move -eq 1 <nowiki>]]</nowiki>; then
         xdotool set_desktop_for_window $wid $(xdotool get_desktop)
     fi
     xdotool windowactivate $wid &> /dev/null
 } 
 
 if mapped? "$1"; then
     show
 else
     # launch the command in the background and remove it from jobs
     $* &
     disown
     
     # wait until the window has been created. We'll exit after 10
     # retries to avoid an infinite loop in case the application failed
     # to launch at all. 
 
     retry=10
     until mapped? "$1"; do
         sleep 1
         ((retry-=1))
         <nowiki>[[</nowiki> retry -eq 0 <nowiki>]]</nowiki> && exit 1
     done
     
     # the window may be on a different desktop now, so we'll show it
     # again to either move it here (--move) or switch to it's desktop
     show
 fi