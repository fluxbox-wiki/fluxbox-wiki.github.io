\_\_TOC\_\_

Introduction
------------

Fluxbox' tabs aren't in any way a new idea. The implementation is much like that of the PWM Window Manager.
Multiple windows are grouped together and they share the same geometry and position, moving one window results in moving them all. Think of them as a stack of papers. The tabs are like those little little plastic tabs you can stick on papers to make flipping to a certain page very easy and fast.

Sounds confusing? It's not! You'll soon be addicted to this way of working with your desktop.

How?
----

To move a window into another, to form a group, you use ctrl-left\_click (see "OnTitlebar Control Mouse1 :StartTabbing" in `~/.fluxbox/keys`) on a window's tab (or titlebar) and drag it to the desired window. In the same way you can ungroup a set of windows, by dragging the tab away to a free space on the desktop, or in another window or group.
Tabs can be shown outside the window or embedded in the titlebar, which you can configure in the Configuration menu \> Tab Options:

-   Position : where to put the tab when is shown
-   Tabs in Titlebar : shows the tab outside or inside the titlebar
-   Maximize Over : shows or hides the tab when the window is maximized
-   Show Pictures : shows the application's pixmap
-   External Tab width : width of the tab when is shown

Configuration
-------------

With the default behaviour, a window may be grouped by dragging one tab (or titlebar) and dropping it anywhere on another window; in same circumstances it could be inconvenient so we can choose to attach it only when the tab (or the titlebar) is on the target window's titlebar.

In `~/.fluxbox/init` change or add this variable:

`session.tabsAttachArea: Titlebar`

and apply it with "reconfigure" from the Configuration menu.

Autogrouping
------------

Via [`~/.fluxbox/apps`](http://fluxbox-wiki.org/index.php?title=Editing_the_apps_file#Grouping_apps_via_the_apps_file), windows can be grouped according to certain specific criteria.

For example, we want to group all web browsers in the current workspace and with a specific position:

`[group]  (workspace=[current])`
` [app] (name=Navigator) (class=Iceweasel) (role=browser)`
` [app] (name=luakit) (class=luakit)`
` [app] (name=dillo) (class=Dillo)`
`  [Position]    (UPPERLEFT)     {81 0}`
`[end`

Style
-----

To utilize fluxbox' neat tabs and make them look (even more) pretty you'll need to add some extra entries to your desired style (theme).
However, note that you don't have to do this, fluxbox is very capable of setting the tabs to a proper color/style by itself, but if you want to have more control of how they look you might want to add a few lines like this:

`window.tab.justify:                     Right`
`window.tab.label.unfocus:               Flat Solid`
`window.tab.label.unfocus.color:         rgb:AC/AC/AC`
`window.tab.label.unfocus.textColor:     black`
`window.tab.label.focus:                 Raised Solid`
`window.tab.label.focus.color:           rgb:CC/CC/CC`
`window.tab.label.focus.textColor:       black`
`window.tab.borderWidth:                 1`
`window.tab.borderColor:                 rgb:10/10/10`
`window.tab.font:                        fixed`

[Category:English howtos](Category:English howtos "wikilink") [Category:Configuration howtos](Category:Configuration howtos "wikilink")
