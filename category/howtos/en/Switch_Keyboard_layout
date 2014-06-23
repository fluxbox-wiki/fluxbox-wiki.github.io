To switch keyboard layout in fluxbox you must take some effect and carefully read [http://www.xfree86.org/current/XKB-Config2.html#2 XKB Configuration ]. Also you need to know which name have your language layout and which '''Variant''' name (if you use Variant).

=== Using xorg.conf ===
First configure your '''xorg.conf''' must correctly setting your <code>/etc/X11/xorg.conf</code>, for example i use Danish (dk) keyboard layout and Iraq (iq)  Kurdish-Arabic-Latin Variant(ku_ara):

 Option		"XkbLayout"	"dk,iq"
 Option		"XkbVariant"	",ku_ara"

You can find more info about your keyboard layout with:
 $ less /usr/share/X11/xkb/rules/base.lst
and search for your country code

=== Using UDEV and Debian (and derivates) ===
 # /etc/default/keyboard
The configuration should look like:

 XKBMODEL="pc105"
 XKBLAYOUT="dk,iq"
 XKBVARIANT=" ,ku_ara"
 XKBOPTIONS="lv3:ralt_switch,compose:lwin,grp:alt_shift_toggle"

=== Adding the switch in your rootmenu ===
 $ vim ~/.fluxbox/menu

This example for '''Danish (dk) and Iraq (iq) kurdish-arabic-latin (ku_ara)'''.
 [begin] (fluxbox)
 [include] (/etc/X11/fluxbox/fluxbox-menu)
 [end]
change it to this:
 [begin] (fluxbox)
 [include] (/etc/X11/fluxbox/fluxbox-menu)
 [submenu] (Keyboards)
 [exec] (dk) {setxkbmap dk}
 [exec] (ku) {setxkbmap iq -variant ku_ara}
 [end]

Another example for German (de) and Danish (dk) layout without '''Variant'''.
 [begin] (fluxbox)
 [include] (/etc/X11/fluxbox/fluxbox-menu)
 [submenu] (Keyboards)
 [exec] (de) {setxkbmap de}
 [exec] (dk) {setxkbmap dk}
 [end]

Now you'll see the '''Keyboards''' option in fluxbox menu at the end.


=== Input hotplugging with HAL ===
'''HAL is dead, let's move on and keep this as reminder on how the syntax was awful.''' <br>
X will utilize HAL to allow for the hotplugging and removal of human interface devices without having to restart X. The configuration should look like:

<pre><?xml version="1.0" encoding="ISO-8859-1"?> <!-- -*- SGML -*- -->
<deviceinfo version="0.2">
  <device>
    <match key="info.capabilities" contains="input.keymap">
      <append key="info.callouts.add" type="strlist">hal-setup-keymap</append>
    </match>

    <match key="info.capabilities" contains="input.keys">
      <merge key="input.xkb.rules" type="string">base</merge>

      <!-- If we're using Linux, we use evdev by default (falling back to
           keyboard otherwise). -->
      <merge key="input.xkb.model" type="string">keyboard</merge>
      <match key="/org/freedesktop/Hal/devices/computer:system.kernel.name"
             string="Linux">
        <merge key="input.xkb.model" type="string">evdev</merge>
      </match>

      <merge key="input.xkb.layout" type="string">dk,iq</merge>
      <merge key="input.xkb.variant" type="string"> ,ku_ara</merge>
      <merge key="input.xkb.options" type="string">grp:alt_shift_toggle</merge>
    </match>
  </device>
</deviceinfo>
</pre>

[[Category:English howtos]]