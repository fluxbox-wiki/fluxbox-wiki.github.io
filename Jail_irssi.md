How to jail/chroot irssi
------------------------

Irssi is a popular IRC client. Its a very popular client for small window managers like [fluxbox](http://fluxbox.org/). This short howto will walk you though the steps for setting up a jail that only has a few commands in it and will help create a much safer IRC enviroment for you. There are a couple things you will need to have installed before we get started. First you need [irssi](http://irssi.org/), next you will need [jail](http://www.jmcresearch.com/projects/jail/). First step is to install jail and irssi, so that irssi will work from your regular linux or unix install.

### Making your jail user

In my example my users name is **ircguy** Next I like to make the user who is going to be jailed. First thing we need to do is gain root.

` su -`

Once you are root we need to add a new user to the system.

`  useradd -g users -d /chroot/jails -s /usr/bin/jail -p somepassword ircguy `

The -p somepassword is optional because you can set this later with root so there will be no plain text password in your bash history file. Now you have a user for this upcoming jail. Lets move on to creating it.

### Making the jail

To make the jail we will use some tools provided by the jail application. First thing we need to do is gain root. (if you dont still have it ;) )

` su -`

Once you are root you need to decided where to put this jail. I like to use /chroot/jails

` mkdir /chroot`

Next

` mkjailenv /chroot/jails`

This will make the jail enviroment for you. You will see some output like this:

` mkjailenv`
` A component of Jail (version 1.9 for linux)`
` `[`http://www.jmcresearch.com/projects/jail/`](http://www.jmcresearch.com/projects/jail/)
` Juan M. Casillas `<assman@gsyc.inf.uc3m.es>
` Making chrooted environment into /chroot/jails`
`       Doing preinstall()`
`       Doing special_devices()`
`       Doing gen_template_password()`
`       Doing postinstall()`
` Done.`

Now we have our jail created, but its rather empty. We need to add some more stuff to it that will make it work. So we need to run another command that comes with jail called **addjailsw** This command will add software to your jail, and this is what you should use any time you are going to install software into the jail. It will take several command line parameters, but the first time we run it you dont want to use any of them because using none will make it create the bare minimals that we need in our new jail.

` addjailsw /chroot/jails`

This will give some output like:

` addjailsw`
` A component of Jail (version 1.9 for linux)`
` `[`http://www.jmcresearch.com/projects/jail/`](http://www.jmcresearch.com/projects/jail/)
` Juan M. Casillas `<assman@gsyc.inf.uc3m.es>
` Guessing mv args()`
` Guessing ls args()`
` Guessing ln args()`
` Guessing grep args()`
` Guessing cat args()`
` Guessing rmdir args()`
` Guessing vi args(-c q)`
` Guessing tail args()`
` Guessing sh args()`
` Guessing id args()`
` Guessing rm args()`
` Guessing head args()`
` Guessing cp args()`
` Guessing pwd args()`
` Guessing mkdir args()`
` Guessing touch args()`
` Guessing more args()`
` Warning: not allowed to overwrite /chroot/jails//etc/passwd`
` Warning: not allowed to overwrite /chroot/jails//etc/group`
` Warning: can't create /proc/meminfo from the /proc filesystem`
` Warning: file /chroot/jails//usr/share/vim/vimfiles/ exists. Overwritting it`
` Warning: file /chroot/jails//usr/share/vim/vimfiles/ exists. Overwritting it`
` Warning: file /chroot/jails//usr/share/vim/vim64/ exists. Overwritting it`
``  /bin/mknod: `/chroot/jails//dev/urandom': File exists  ``
` Done.`

As you can see we now have

-   mv
-   ls
-   ln
-   grep
-   cat
-   rmdir
-   vi
-   tail
-   sh
-   id
-   rm
-   head
-   cp
-   pwd
-   mkdir
-   touch
-   more

These are the only commands we have in out jail now :) nifty eh? Ignore the warnings as long as you dont get any errors you are good to move on. Now as I said before this is going to be for an irssi jail, so now we should install irssi in our jail. On some systems we do need to look in /chroot/jails/lib/ because for some reason ld-linux.so.2 doesnt get copied into the the jail. If this is the case with your jail just manually copy it like so

` cp /lib/ld-linux.so.2 /chroot/jails/lib/`

### Adding programs to the jail

To add irssi, or any other software to the jail we use the **addjailsw** command. Some users might rather have bash in the jail instead of just sh. No big deal simply run:

` addjailsw /chroot/jails -P bash "--version"`
` addjailsw /chroot/jails -P irssi`

Once you have run these 2 commands you will see some output like:

` addjailsw`
` A component of Jail (version 1.9 for linux)`
` `[`http://www.jmcresearch.com/projects/jail/`](http://www.jmcresearch.com/projects/jail/)
` Juan M. Casillas `<assman@gsyc.inf.uc3m.es>
` Guessing bash args(--version)`
` Warning: file /chroot/jails//lib/libdl.so.2 exists. Overwritting it`
` Warning: file /chroot/jails//lib/libc.so.6 exists. Overwritting it`
` Warning: file /chroot/jails//etc/ld.so.cache exists. Overwritting it`
``  /bin/mknod: `/chroot/jails//dev/urandom': File exists ``
``  /bin/mknod: `/chroot/jails//dev/tty': File exists ``
` Done.`
` root@mybox chroot # addjailsw /chroot/jails/ -P irssi           `
` addjailsw`
` A component of Jail (version 1.9 for linux)`
` `[`http://www.jmcresearch.com/projects/jail/`](http://www.jmcresearch.com/projects/jail/)
` Juan M. Casillas `<assman@gsyc.inf.uc3m.es>
` Guessing irssi args(0)`
` Warning: file /chroot/jails//usr/lib/libperl.so.1 exists. Overwritting it`
` Warning: file /chroot/jails//lib/libpthread.so.0 exists. Overwritting it`
` Warning: file /chroot/jails//lib/libnsl.so.1 exists. Overwritting it`
` Warning: file /chroot/jails//lib/libm.so.6 exists. Overwritting it`
` Warning: file /chroot/jails//lib/libcrypt.so.1 exists. Overwritting it`
` Warning: file /chroot/jails//lib/libutil.so.1 exists. Overwritting it`
` Warning: file /chroot/jails//lib/libdl.so.2 exists. Overwritting it`
` Warning: file /chroot/jails//lib/libncurses.so.5 exists. Overwritting it`
` Warning: file /chroot/jails//lib/libc.so.6 exists. Overwritting it`
` Warning: file /chroot/jails//lib/libgpm.so.1 exists. Overwritting it`
` Warning: file /chroot/jails//etc/ld.so.cache exists. Overwritting it`
` Warning: file /chroot/jails//etc/nsswitch.conf exists. Overwritting it`
` Warning: file /chroot/jails//lib/libnss_compat.so.2 exists. Overwritting it`
` Warning: file /chroot/jails//lib/libnss_nis.so.2 exists. Overwritting it`
` Warning: file /chroot/jails//lib/libnss_files.so.2 exists. Overwritting it`
` Warning: not allowed to overwrite /chroot/jails//etc/passwd `
` Warning: file /chroot/jails//etc/terminfo/s/screen exists. Overwritting it`
``  /bin/mknod: `/chroot/jails//dev/urandom': File exists ``
``  /bin/mknod: `/chroot/jails//dev/null': File exists ``
` Done.`

Again ignore the warnings, unless you got some errors you are just about done.

### Adding the user to the jail

Next we need to get this user we made setup in the jail. This command is also provided by the jail application.

` addjailuser /chroot/jails/ /home/ircguy /bin/bash ircguy`

This will give us some output like this:

` addjailuser`
` A component of Jail (version 1.9 for linux)`
` `[`http://www.jmcresearch.com/projects/jail/`](http://www.jmcresearch.com/projects/jail/)
` Juan M. Casillas `<assman@gsyc.inf.uc3m.es>
` Adding user ircguy in chrooted environment /chroot/jails/`
` Done.`

Almost done now :D

### Finishing touches

If you followed this whole thing and installed bash in your jail you might like to have a couple more things, these will make your shell work, and be more comfortable feeling.

` mkdir /chroot/jails/etc/bash `
` cp /etc/bash/bashrc /chroot/jails/etc/bash`
` cp /etc/profile /chroot/jails/etc`
` addjailsw /var/chroot -P whoami `

Ok now if you didnt add your password for ircguy when you made the user go ahead and do so now

` passwd ircguy`

Ok way to go youre done!! Test that it works by doing:

` su - ircguy`

There you go, now youre in your new jail. One hitch with this is there are no DNS libs in this jail so to connect to IRC server open a regular shell/terminal and type

` host irc.freenode.net`

You will get a list of IP addresses that freenode uses. Now simply instead of using /server irc.freenode.net you use the ip like so:

` /server 38.99.64.210 `

And this will log you into freenode. Good luck and enjoy your new safer irssi enviroment.

[Category:English howtos](Category:English howtos "wikilink") [Category:Misc howtos](Category:Misc howtos "wikilink")
