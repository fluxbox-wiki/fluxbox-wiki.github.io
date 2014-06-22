For users of fluxbox-1.1.1 or later, you can use the new
**ChangeWorkspace** mechanism to track the last workspace you were on,
and then bind a key to jump back there.

Example Script
--------------

    #!/bin/bash
    #
    # Designed to be used for a "Switch to last desktop" key
    #
    # Version: 1
    # Author: Jim Ramsay <i.am@jimramsay.com>
    # Released under a "Do whatever you want with it" license.
    # 
    # Example Keys file usage:
    #   Mod4 6 :Exec fluxbox-lastworkspace
    #   ChangeWorkspace :Exec fluxbox-lastworkspace --set
    #
    # Requires you have xprop and wmctrl installed.
    #

    FLUXBOXROOT=${FLUXBOXROOT:-${HOME}/.fluxbox}
    CURRENTFILE=${FLUXBOXROOT}/currentdesktop
    LASTFILE=${FLUXBOXROOT}/lastdesktop
    LOGFILE=${LASTFILE}.log

    if [[ -f $LASTFILE ]]; then
        last=$(<$LASTFILE)
    fi
    if [[ -f $CURRENTFILE ]]; then
        current=$(<$CURRENTFILE)
    fi

    if [[ $# -gt 0 ]]; then
        if [[ $1 != "-s" && $1 != "--set" ]]; then
            new=$1
            echo "Manually setting current workspace from $current to $new" > $LOGFILE
        else
            new=$(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}')
            echo "Automatically setting current workspace" > $LOGFILE
            echo "  Current was $current, new is $new" >> $LOGFILE

            # Due to a race condition between the _NET_CURRENT_DESKTOP property being
            # updated and the Fluxbox "ChangeWorkspace" event, we need to potentially
            # spin here until we really see the new workspace number.
            if [[ -n $current && $current == $new ]]; then
                c=0
                while [[ $current == $new && $c < 10 ]]; do
                    sleep 0.2
                    new=$(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}')
                    ((c+=1))
                done

                if [[ -n $current && $current == $new ]]; then
                    echo "  Workspace did not change! ($c iterations)" >> $LOGFILE
                else
                    echo "  New is $new after $c iterations" >> $LOGFILE
                fi
            fi
        fi

        # We now really have the new workspace
        if [[ -f $CURRENTFILE ]]; then
            mv "$CURRENTFILE" "$LASTFILE"
        fi
        echo $new > "$CURRENTFILE"
    else
        wmctrl -s ${last:-0}
    fi

[Category:English howtos](Category:English howtos "wikilink")
[Category:Configuration
howtos](Category:Configuration howtos "wikilink")
