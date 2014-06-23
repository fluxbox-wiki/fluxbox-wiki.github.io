\_\_TOC\_\_

### What is Xdefaults

Xdefaults is a configuration file that your terminal emulator (and many other X applications) will use for settings, so you don't have to specify long command line args.

Xdefaults is the old name, still used as convention, but it's called [Xresources](http://lists.debian.org/debian-user/2005/09/msg01385.html) since years and located in the users \$HOME as a hidden file. If you don't have this file it's normal. Most people will have to create it before it is there.

### An example of .Xresources

     !Xft.dpi:                      96
     Xft.rgba:                      rgb
     Xft.antialias:                 true
     Xft.hinting:                   true
     Xft.hintstyle:                 hintfull

     xcalendar*firstDay:            1
     xcalendar*markHoliday:         false
     !Xcursor.theme:                whitelarge
     !Xcursor.size:                 32

     !-------------------------------------------------------------------------------
     !
     !  U R X V T - Setting
     !
     !real transparency with active compositor
     !URxvt*depth:                          32
     !URxvt*background:                     rgba:0000/0000/0000/dddd
     !
     URxvt*scrollBar:                       false
     !URxvt*scrollColor:                    grey13
     !URxvt*troughColor:                    black
     !URxvt*scrollBar_floating:             true
     !URxvt*scrollBar_right:                true
     URxvt*cursorColor:                     darkorange1
     URxvt*foreground:                      grey75
     URxvt*background:                      grey15
     URxvt*saveLines:                       7777
     URxvt*cursorBlink:                     false
     URxvt*termName:                        rxvt-256color
     URxvt*font:                            xft:Dejavu Sans Mono:pixelsize=10.5
     URxvt*boldFont:                        xft:Dejavu Sans Mono:pixelsize=10.5
     URxvt*colorBD:                         #FFB700
     !URxvt*transparent:                    true
     !URxvt*shading:                        33
     !URxvt*tintColor:                      turquoise
     URxvt.cutchars:                        ()*,<>[]{}|`""''
     !URxvt.tabbed.tabbar-fg:               6
     !URxvt.tabbed.tabbar-bg:               0
     !URxvt.tabbed.tab-fg:                  0
     !URxvt.tabbed.tab-bg:                  3
     URxvt*iso14755_52:         false
     URxvt.perl-ext-common:                 matcher
     URxvt.urlLauncher:                     urlLauncher $0
     URxvt.keysym.C-Delete:                 perl:matcher:last
     URxvt.keysym.M-Delete:                 perl:matcher:list
     URxvt*matcher.pattern.1:               \\bhttps?:\/\/(www.youtube.com|youtube.com|youtu.be)/\\S*
     URxvt*matcher.launcher.1:              urlLauncher -flash $0
     URxvt*matcher.pattern.2:               \\bhttps?:\/\/vimeo.com\/([\\w-]*)
     URxvt*matcher.launcher.2:              urlLauncher -flash $0
     URxvt*matcher.pattern.3:               \\bhttps?:\/\/[\\w-.]*\/[\\w./?&@#-]*\\.(?i)(mp4|flv|wmv)
     URxvt*matcher.launcher.3:              urlLauncher -video $0
     URxvt*matcher.pattern.4:               \\bhttps?:\/\/[\\w-.]*\/[\\w./?&@#-]*\\.(?i)(mp3|ogg|wav|wma)
     URxvt*matcher.launcher.4:              urlLauncher -audio $0
     URxvt*matcher.pattern.5:               \\bhttps?:\/\/[\\w-.]*\/[\\w./?&@#-]*\\.(?i)(jpg|jpeg|png)
     URxvt*matcher.launcher.5:              urlLauncher -image $0
     URxvt*matcher.pattern.6:               \\bhttps?:\/\/[\\w-.]*\/[\\w./?&@#-]*\\.(?i)(gif)
     URxvt*matcher.launcher.6:              urlLauncher -gif $0

     !colors
     !black
     URxvt*color0:              #171717
     URxvt*color8:              #737373
     !red
     URxvt*color1:              #FF5E5E
     URxvt*color9:              #FF7878
     !green
     URxvt*color2:              #9CE82B
     URxvt*color10:             #9ACD32
     !yellow
     URxvt*color3:              #F0E68C
     URxvt*color11:             #EEE8AA
     !blue
     URxvt*color4:              #008AFF
     URxvt*color12:             #4F98FF
     !magenta
     URxvt*color5:              #E88CFF
     URxvt*color13:             #EDA6FF
     !cyan
     URxvt*color6:              #87CEFA
     URxvt*color14:             #B0E2FF
     !white
     URxvt*color7:              #DCDCCC
     URxvt*color15:             #FFFFFF

     !-------------------------------------------------------------------------------
     !
     !  X T E R M - Setting
     !
     !
     XTerm*background:                       grey15
     XTerm*foreground:                       grey75
     XTerm*cursorColor:                      darkorange1
     XTerm*scrollBar:                        false
     XTterm*utf8:                            2
     XTerm*termName:                         xterm-256color
     XTerm*faceName:                         xft:Dejavu Sans Mono:pixelsize=11.5
     ! http://invisible-island.net/xterm/xterm.faq.html#tiny_menus
     XTerm.VT100.geometry:                   93x29
     XTerm*saveLines:                        7777
     XTerm*metaSendsEscape:                  true
     XTerm*highlightSelection:               true
     XTerm*trimSelection:                    true
     XTerm*cutNewline:                       false
     XTerm*colorBDMode:                      true
     XTerm*colorBD:                          khaki
     XTerm*charClass: 3:48,35:48,37:48,43:48,45-47:48,64:48,95:48,126:48,35:48,58:48,63:48,61:48,44:48,38:48,59:48
     
     !colors
     !black
     XTerm*color0:                           #171717
     XTerm*color8:                           #737373
     !red
     XTerm*color1:                           #FF5E5E
     XTerm*color9:                           #FF7878
     !green
     XTerm*color2:                           #9CE82B
     XTerm*color10:                          #9ACD32
     !yellow
     XTerm*color3:                           #F0E68C
     XTerm*color11:                          #EEE8AA
     !blue
     XTerm*color4:                           #008AFF
     XTerm*color12:                          #4F98FF
     !magenta
     XTerm*color5:                           #E88CFF
     XTerm*color13:                          #EDA6FF
     !cyan
     XTerm*color6:                           #87CEFA
     XTerm*color14:                          #B0E2FF
     !white
     XTerm*color7:                           #DCDCCC
     XTerm*color15:                          #FFFFFF
     
     !-------------------------------------------------------------------------------
     !
     !
     !      A T E R M - Setting
     !
     !
     Aterm*background:      #000000
     Aterm*foreground:      #ffffff
     Aterm*transparent:     true
     Aterm*shading:         80
     Aterm*cursorColor:     #d8d8d8
     Aterm*scrollbars:      false
     Aterm*saveLines:       2000
     Aterm*tinting:         gray
     Aterm*scrollBar:       false
     !Aterm*scrollBar_right:    true
     Aterm*transpscrollbar:     true
     Aterm*borderwidth:     0
     Aterm*font:                    -lfp-gamow-medium-r-normal-*-*-90-*-*-c-*-iso8859-5
     Aterm*geometry:                80x25
     Aterm*fading:          70  
     
     !colors
     !black
     Aterm*color0:      #333333
     Aterm*color8:      #686868
     !red
     Aterm*color1:      #CA5E5E
     Aterm*color9:      #FF595D
     !green
     Aterm*color2:      #ABCB8D
     Aterm*color10:     #AFD78A
     !yellow
     Aterm*color3:      #C48D62
     Aterm*color11:     #E0A765
     !blue
     Aterm*color4:      #8CA0B0
     Aterm*color12:     #3D6A82
     !magenta
     Aterm*color5:      #CC98E0
     Aterm*color13:     #E1A2DC
     !cyan
     Aterm*color6:      #44CACF
     Aterm*color14:     #6CBFC4
     !white
     Aterm*color7:      #E7E6DD
     Aterm*color15:     #F0EFE7 
     
     !-------------------------------------------------------------------------------
     !
     !  X C A L C - Setting
     !
     !
     xcalc*geometry: 200x275
     xcalc.ti.bevel.background: #111111
     xcalc.ti.bevel.screen.background: #000000
     xcalc.ti.bevel.screen.DEG.background: #000000
     xcalc.ti.bevel.screen.DEG.foreground: LightSeaGreen
     xcalc.ti.bevel.screen.GRAD.background: #000000
     xcalc.ti.bevel.screen.GRAD.foreground: LightSeaGreen
     xcalc.ti.bevel.screen.RAD.background: #000000
     xcalc.ti.bevel.screen.RAD.foreground: LightSeaGreen
     xcalc.ti.bevel.screen.INV.background: #000000
     xcalc.ti.bevel.screen.INV.foreground: Red
     xcalc.ti.bevel.screen.LCD.background: #000000
     xcalc.ti.bevel.screen.LCD.foreground: LightSeaGreen
     xcalc.ti.bevel.screen.LCD.shadowWidth: 0
     xcalc.ti.bevel.screen.M.background: #000000
     xcalc.ti.bevel.screen.M.foreground: LightSeaGreen
     xcalc.ti.bevel.screen.P.background: #000000
     xcalc.ti.bevel.screen.P.foreground: Yellow
     xcalc.ti.Command.foreground: White
     xcalc.ti.Command.background: #777777
     xcalc.ti.button5.background: Orange3
     xcalc.ti.button19.background: #611161
     xcalc.ti.button18.background: #611161
     xcalc.ti.button20.background: #611111
     xcalc.ti.button25.background: #722222
     xcalc.ti.button30.background: #833333
     xcalc.ti.button35.background: #944444
     xcalc.ti.button40.background: #a55555
     xcalc.ti.button22.background: #222262
     xcalc.ti.button23.background: #222262
     xcalc.ti.button24.background: #222272
     xcalc.ti.button27.background: #333373
     xcalc.ti.button28.background: #333373
     xcalc.ti.button29.background: #333373
     xcalc.ti.button32.background: #444484
     xcalc.ti.button33.background: #444484
     xcalc.ti.button34.background: #444484
     xcalc.ti.button37.background: #555595
     xcalc.ti.button38.background: #555595
     xcalc.ti.button39.background: #555595
     XCalc*Cursor:                 hand2
     XCalc*ShapeStyle:             rectangle
     
     !-------------------------------------------------------------------------------
     !
     !  X M E S S A G E - Setting
     !
     !
     Xmessage.form.okay.shapeStyle:         rectangle
     Xmessage.form.okay.background:         #777777
     Xmessage.form.okay.foreground:         snow
     !Xmessage*message*background:          snow
     Xmessage*buttons:                       OK
     Xmessage*defaultButton:                 OK
     !Xmessage*Background:                  black
     !Xmessage*Foreground:                  grey85
     !Xmessage.Scrollbar:                   WhenNeeded
     Xmessage.form.message.Scroll:          WhenNeeded
     Xmessage*Font:                         -*-terminus-medium-*-*-*-12-*-*-*-*-*-*-*
     Xmessage*borderWidth:                  0
     Xmessage*Text.borderWidth:             0
     Xmessage*Command.shapeStyle:           rectangle
     Xmessage*Text.?.cursorColor:           white

     !-------------------------------------------------------------------------------
     !
     !  X F O N T S E L - Setting
     !
     !
     !XFontSel*sampleText.background: TEXTBG
     XFontSel*menu*showUnselectable: false
     XFontSel*MenuButton.shadowWidth: 0
     XFontsel*Toggle*ToggleStyle: check
     XFontsel*MenuButton*Justify:    left
     XFontsel*MenuButton*MenuButtonStyle: select
     .xfontsel.pane.commandBox.quitButton.background: #777777
     .xfontsel.pane.commandBox.quitButton.foreground: snow
     .xfontsel.pane.commandBox.ownButton.background: orange3
     .xfontsel.pane.commandBox.ownButton.foreground: snow
     .xfontsel.pane.commandBox.countLabel.background: snow
     .xfontsel.pane.viewPort.sampleText.background: #777777
     .xfontsel.pane.viewPort.sampleText.foreground: snow
     .xfontsel.pane.fieldBox.field0.background: #777777
     .xfontsel.pane.fieldBox.field0.foreground: snow
     .xfontsel.pane.fieldBox.field1.background: #777777
     .xfontsel.pane.fieldBox.field1.foreground: snow
     .xfontsel.pane.fieldBox.field2.background: #777777
     .xfontsel.pane.fieldBox.field2.foreground: snow
     .xfontsel.pane.fieldBox.field3.background: #777777
     .xfontsel.pane.fieldBox.field3.foreground: snow
     .xfontsel.pane.fieldBox.field4.background: #777777
     .xfontsel.pane.fieldBox.field4.foreground: snow
     .xfontsel.pane.fieldBox.field5.background: #777777
     .xfontsel.pane.fieldBox.field5.foreground: snow
     .xfontsel.pane.fieldBox.field6.background: #777777
     .xfontsel.pane.fieldBox.field6.foreground: snow
     .xfontsel.pane.fieldBox.field7.background: #777777
     .xfontsel.pane.fieldBox.field7.foreground: snow
     .xfontsel.pane.fieldBox.field8.background: #777777
     .xfontsel.pane.fieldBox.field8.foreground: snow
     .xfontsel.pane.fieldBox.field9.background: #777777
     .xfontsel.pane.fieldBox.field9.foreground: snow
     .xfontsel.pane.fieldBox.field10.background: #777777
     .xfontsel.pane.fieldBox.field10.foreground: snow
     .xfontsel.pane.fieldBox.field11.background: #777777
     .xfontsel.pane.fieldBox.field11.foreground: snow
     .xfontsel.pane.fieldBox.field12.background: #777777
     .xfontsel.pane.fieldBox.field12.foreground: snow
     .xfontsel.pane.fieldBox.field13.background: #777777
     .xfontsel.pane.fieldBox.field13.foreground: snow
     .xfontsel.pane.fieldBox*foreground: #000000
     .xfontsel.pane.fieldBox.MenuButton.borderWidth: 1
     .xfontsel.pane.fieldBox.MenuButton.internalHeight: 1
     .xfontsel.pane.fieldBox.MenuButton.internalWidth: 2
     .xfontsel.pane.fieldBox.MenuButton.shapeStyle: rectangle
     
     !-------------------------------------------------------------------------------
     !
     !  X C O L O R S E L - Setting
     !
     !
     xcolorsel*Background:                   black
     xcolorsel*Foreground:                   grey85
     xcolorsel*Font:                         -*-terminus-medium-*-*-*-12-*-*-*-*-*-*-*
     xcolorsel.geometry:                     399x595
     xcolorsel*displayFormat:                #rrggbb
     xcolorsel*maxRows:                      99

This is the \~/bin/urlLauncher script called by URxvt\*matcher.launcher

    #!/bin/bash

    ### urlLauncher 0.7 by skizzhg, a script to handle the urxvt matcher

    case "$1" in
     -flash)
        { mpv --no-consolecontrols --ontop --really-quiet "$2" &>/dev/null
          if [[ "$?" != "0" ]]; then
            case "$2" in
              *vimeo*)
                 mpv --no-consolecontrols --title="$(youtube-dl -e $2)" --ontop --really-quiet $(youtube-dl -f h264-sd -g "$2" || youtube-dl -g "$2") &>/dev/null
                   ;;
               *youtu*)
                    mpv --no-consolecontrols --title="$(youtube-dl --no-playlist -e $2)" --ontop --really-quiet $(youtube-dl --no-playlist -f 18 -g "$2") &>/dev/null
                   ;;
               esac
             fi
           } &
        ;;
     -video)
        mpv --ontop --really-quiet "$2" &>/dev/null &
        ;;
     -audio)
        tmux split-window -vdp 10 "exec mpv --profile=mzk \"$2\""
        ;;
     -image)
        feh -. "$2" || firefox "$2" &>/dev/null
        ;;
      -gif)
        gifview -a < <(curl -s "$2")
        ;;
         *)
         if [[ -z $DISPLAY ]]; then
           tmux new-window -n w3m "exec w3m \"$1\""
         else
           firefox "$1" &>/dev/null
         fi
        ;;
    esac

### I've changed all the settings but they do nothing!

Changes will not be visible until you run

`$ xrdb $HOME/.Xresources`

And then run xterm or or urxvt or anything again, because the already running instance won't be involved.

### How to load those settings on startup?

Add

`$ xrdb ~/.Xresources`

in your \~/.fluxbox/startup and remember to launch fluxbox with [startfluxbox](startfluxbox "wikilink").

### Are there more options that are not listed here?

Yes, for a complete listing of what all items your terminal emulator will take reference its man page. Typically you can open its man page and type

` /RESOURCES`

Hit enter and most of the time this will bring you to where the begining of the optins listed are.

### External resources

-   <http://dotfiles.org/.Xdefaults>
-   <http://dotfiles.org/.Xresources>
-   <http://xwinman.org/resource.php>

[Category:English howtos](Category:English howtos "wikilink") [Category:Misc howtos](Category:Misc howtos "wikilink")
