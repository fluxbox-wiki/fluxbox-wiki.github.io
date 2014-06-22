Editing the init file
---------------------

You can edit all Fluxbox's settings with the init file
**\~/.fluxbox/init**. Just open it with any text editor and after you
have saved, select **reconfigure** (**reload config**) or **restart**
from the menu.

All possible settings with descriptions

from the new man page): screen0 means that these settings affect only
the first monitor on your system. If you have multiple monitors, use
screen1, screen2 also.

### alpha settings

`session.screen0.menu.alpha: `<integer>\
`session.screen0.slit.alpha: `<integer>\
`session.screen0.toolbar.alpha: `<integer>\
`session.screen0.window.focus.alpha: `<integer>\
`session.screen0.window.unfocus.alpha: `<integer>\
`     These resources are available to the user to set different lev-`\
`     els of transparency for different components of Fluxbox.  Each`\
`     one accepts a value between 0-255, 255 being opaque and 0 being`\
`     completely transparent.`\
`     Default: 255`

### autohide settings

`session.screen0.slit.autoHide: `<boolean>\
`session.screen0.toolbar.autoHide: `<boolean>\
`     The autoHide resources allow the user to set the behaviour of`\
`     the toolbar and slit. This behaviour can be that they disappear`\
`     when they are not being used actively by the user, or they`\
`     remain visible at all times.  `\
`     Default: false`

### layer settings

`session.screen0.slit.layer: `<layer>\
`session.screen0.toolbar.layer: `<layer>\
`     With these two resources, you can set the layer you want the`\
`     toolbar and the slit to appear on.  Please read the LAYER sec-`\
`     tion for more information. `\
`     Default: Desktop`

### onTop settings

`session.screen0.slit.onTop: `<boolean>\
`session.screen0.toolbar.onTop: `<boolean>\
`     A user can set whether or not the toolbar or slit are always on`\
`     top of the screen.  Setting these resources will put the slit`\
`     and toolbar above everything visible in the window.`\
`    Default: False`

### placement settings

`session.screen0.slit.placement: `<placement>\
`session.screen0.toolbar.placement: `<placement>\
`     These allow a user to place the slit and toolbar where ever they`\
`     like.  Possible options are:`\
`     -   BottomCenter`\
`     -   BottomLeft`\
`     -   BottomRight`\
`     -   LeftCenter`\
`     -   RightCenter`\
`     -   TopCenter`\
`     -   TopLeft`\
`     -   TopRight`

### maxOver settings

`session.screen0.slit.maxOver: `<boolean>\
`session.screen0.toolbar.maxOver: `<boolean>\
`     Setting these to 'true' will allow application windows to maximize`\
`     over the complete screen.  Setting to 'false' allows the slit and`\
`     toolbar to hold their territory and will always be visible when an`\
`     application is maximized.`\
`     Default: false`

### toolbar settings

`session.screen0.toolbar.height: `<integer>\
`     Set the height of the toolbar.`\
`     If the value is set to 0, the style file will gain control over the`\
`     toolbar height. It is possible to set a fixed height by changing it in`\
`     init to something >0.`\
`     Default: 0`

`session.screen0.toolbar.visible: `<boolean>\
`     The user can set whether they want to have a toolbar on screen at`\
`     all.  Setting to 'false' removes the toolbar from the screen. This`\
`     ultimately depends on whether or not the toolbar was compiled into`\
`     the Fluxbox build. The default is that the toolbar will be visible.`\
`     Default: true`

`session.screen0.toolbar.widthPercent: `<integer>\
`     This resource sets the width of the toolbar on the screen to integer.`\
`     Default: 100`

`session.screen0.toolbar.tools: `<tools>\
`     This resource specifies the tools plugged into the toolbar. Read`\
`     the TOOLBAR section in this manual for a description of each of`\
`     these. Possible tools:`\
`     -   clock`\
`     -   iconbar`\
`     -   nextwindow`\
`     -   prevwindow`\
`     -   nextworkspace`\
`     -   prevworkspace`\
`     -   systemtray`\
`     -   workspacename`

### slit settings

`session.screen0.slit.onhead: `<integer>\
`session.screen0.toolbar.onhead: `<integer>\
`     For those that have dual head systems, users can set this value`\
`     to the number of the screen where they would like to see the slit and toolbar.`\
`     Default: 0`\
`session.screen0.slit.direction: Vertical`

### iconbar settings

`session.screen0.iconbar.iconWidth: 70`\
`session.screen0.iconbar.mode: `<mode>\
`     This value is set in the Iconbar Mode menu.  The available`\
`     options are::`\
`     -   All Windows`\
`     -   Icons`\
`     -   None`\
`     -   Workspace`\
`     -   WorkspaceIcons`

`session.screen0.iconbar.usePixmap: `<boolean>\
`     This is also set in the Iconbar Mode menu.  When set to 'true'`\
`     this will show the native icon of applications. `\
`     Default: true`

`session.screen0.iconbar.iconTextPadding: 10l`\
`session.screen0.iconbar.deiconifyMode: Current`\
`session.screen0.iconbar.wheelMode: Screen`\
`session.screen0.iconbar.alignment: `<position>\
`     This value should be changed in the Iconbar Mode menu.  `\
`     Available options:`\
`      -   Left: Fixed width, aligned left`\
`      -   Relative`\
`      -   Right: Fixed width, aligned right`\
`     Default: Relative`

`session.screen0.iconbar.clientWidth: `<integer>\
`     Used to specify the iconbar button width for Left/Right alignment.  `\
`     Default: 0`

### tab settings

`session.screen0.tab.alignment: Left`\
`session.screen0.tab.height: 16`\
`session.screen0.tab.placement: Top`\
`session.screen0.tab.rotatevertical: True`\
`session.screen0.tab.width: 64`

### window edge snapping / snap to

`session.screen0.edgeSnapThreshold: `<integer>\
`     When moving a window across your screen, Fluxbox is able to have it`\
`     "snap" to the edges of the screen and windows for easy placement. This variable`\
`     tells Fluxbox the distance (in pixels) at which the window will jump`\
`     to the edge. `\
`     Default: 0`

### misc fluxbox settings

`session.screen0.followModel: Ignore`\
`session.screen0.rowPlacementDirection: LeftToRight`\
`session.screen0.colPlacementDirection: TopToBottom`\
`session.screen0.resizeMode: Bottom`\
`     Other values are Quadrant and Center. `\
`session.screen0.focusModel: ClickToFocus`\
`     The Other value is MouseFocus which allows the focus to follow the`\
`     mouse leaving the window level in the same location.`\
`     (The man page calls this SloppyFocus (like twm))`\
`session.screen0.autoRaise: `<boolean>\
`session.screen0.clickRaises: `<boolean>\
`session.screen0.workspacewarping: `<boolean>\
`     Setting this variable to 'true' allows the user to drag a window`\
`     from one workspace to the next.`\
`     Default: true`\
`session.screen0.showwindowposition: `<boolean>\
`     Setting this resource to 'true' shows the user, in a little window,`\
`     the exact position of the application window while the user is`\
`     dragging it. Allows a precise placement of windows on a screen.`\
`     Default: true`

`session.screen0.decorateTransient: `<boolean>\
`session.screen0.showposinsidewindow: `<boolean>\
`session.screen0.menuMode: Delay`\
`session.screen0.focusNewWindows: `<boolean>\
`session.screen0.workspaceNames: workspace1, workspaceN`\
`     Here is where the user can name their workspaces. However it is`\
`     recommended to use the tool available in the Configuration Menu to`\
`     set these. `\
`     Default: one, two, three, four`

`session.screen0.menuDelayClose: 0`\
`session.screen0.strftimeFormat: `<date>\
`     This adjusts the way the current time is displayed in the tool-`\
`     bar.  The strftime(3) format is used.`\
`     Default: %I:%M %p     This value sets the delay (in milli-sec) that you would like the`\
`     menu to remain visible after you've clicked out of it. `\
`     Default: 0`

`session.screen0.windowPlacement: RowSmartPlacement | ColSmartPlacement | CascadePlacement | UnderMousePlacement`\
`     This value defines the way new opened windows will be placed.`\
`     Default: RowSmartPlacement`

`session.screen0.fullMaximization: `<boolean>\
`session.screen0.sloppywindowgrouping: `<boolean>\
`session.screen0.imageDither: `<boolean>

`session.screen0.opaqueMove: `<boolean>\
`     Sets the visibility level of application windows while being`\
`     dragged. `\
`     Default: false`

`session.screen0.menuDelay: `<msec>\
`session.screen0.workspaces: `<integer>\
`     Set this to the number of workspaces the users wants. `\
`     Default: 4`

`session.screen0.focusLastWindow: `<boolean>\
`session.screen0.windowMenu:`

`session.appsFile: `<location>\
`session.groupFile: `<location>\
`session.keyFile: `<location>\
`session.menuFile: `<location>\
`session.slitlistFile: `<location>\
`session.styleFile: `<location>\
`     All of these resources require a pathname to their specific`\
`     requests.This is where you can specify different files. Most of`\
`     the defaults will be located in the users ~/.fluxbox directory.`

`session.autoRaiseDelay: `<integer>\
`     Adjusts the delay (in milli-sec) before focused windows will raise`\
`     when using the Autoraise option.`\
`     Default: 250`

`session.cacheLife: `<integer>\
`     This tells Fluxbox how long (in minutes) unused pixmaps may stay in`\
`     the X server's memory. `\
`     Default: 5`

`session.cacheMax: `<integer>\
`     This tells Fluxbox how much memory (in Kb) it may use to store`\
`     cached pixmaps on the X server. If your machine runs short of`\
`     memory, you may lower this value. `\
`     Default: 200`

`session.colorsPerChannel: `<integer>\
`     This tells Fluxbox how many colors to take from the X server on`\
`     pseudo-color displays.  A channel would be red, green, or blue.`\
`     Fluxbox will allocate this variable ^ 3 and make them always`\
`     available. Value must be between 2-6. When you run Fluxbox on an`\
`     8bpp display, you must set this resource to 4. `\
`     Default: 4`

`session.doubleClickInterval: `<integer>\
`     Adjust the delay (in milli-sec) between mouse clicks for Fluxbox`\
`     to consider a double click. `\
`     Default: 250`

`session.forcePseudoTransparency: `<boolean>\
`session.focusTabMinWidth: 0`\
`session.iconbar: `<boolean>\
`     Set this value to 'true' or 'false' to enable or disable Fluxbox`\
`     using the toolbar to display iconified windows. `\
`     Default: true`

`session.ignoreBorder: `<boolean>\
`session.imageDither: `<boolean>\
`     Set 'true or 'false', respectively, to enable or disable dithering`\
`     of images. Only necessary on systems with small colour depths (8bpp`\
`     or less).`\
`     Default: false`

`session.numLayers: 13`\
`session.opaqueMove: `<boolean>\
``      When moving a window, setting this to ` ``<boolean>`' will draw the window`\
`     contents as it moves (this is nasty on slow systems). If 'false' it`\
`     will only draw an outline of the window border.`\
`     Default: true`

`session.tabs: `<boolean>\
`session.tabPadding: 0`\
`session.tabsAttachArea: Window`

`session.screen0.titlebar.left: Stick`\
`session.screen0.titlebar.right: Minimize Maximize Close`\
`     You can choose what buttons are visible in the titlebar and on which side.`\
`     Possible buttons are Stick, Menu, Shade, Minimize, Maximize and Close.`

`session.updateDelayTime: 0`\
`session.useMod1: `<boolean>

[Category:English howtos](Category:English howtos "wikilink")
[Category:Configuration
howtos](Category:Configuration howtos "wikilink")
