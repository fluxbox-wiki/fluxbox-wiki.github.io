Compiling with the Appropriate Options
--------------------------------------

Enabling debug output when compiling fluxbox will print a lot of messages to your stderr about what fluxbox is doing while it runs. This is not required to get a core dump, but you and/or the developers may find it useful if you provide it.

If you have used a package to install fluxbox with instead of the source you will need to use the source, follow [this](how to build fluxbox from source "wikilink") guide.

Now what we need to do is move to the directory where our fluxbox source is. I use [Git](how to build fluxbox from source "wikilink") fluxbox so what I will do is:

` $ cd ~/fluxbox`

Now that I am in my directory where the fluxbox src is I will issue the following command:

` CXXFLAGS="-g" LDFLAGS="-g" ./configure  --enable-debug --enable-imlib2 --enable-xinerama`

This will enable imlib2 for png support, debug symbols, and xinerama for my dual head support. The first part of the command enables debug information for gdb which is a debug tool many developers use. Once this command has finished running issue the following command to build fluxbox:

` $ make clean && make`

Once this has finished you will need to gain super user privilege (aka root) to finish the install. I will be using sudo for this, you could use su - if you want:

` $ sudo make install`

Make sure you do not run \`strip' on the created executable file, as this will remove all useful information from the core dump. Running the following command should show you the size of the fluxbox executable installed in your system. It should be about 10MB instead of about 1MB.

``  $ ls -l `command -v fluxbox` ``

Wrapping Up
-----------

All we need to do now is run this command before we start fluxbox:

` $ ulimit -c unlimited`

This command allows your shell environment to create the core dump and will allow it to be as large as it needs to be.

Next just start fluxbox

` $ startx /path/to/fluxbox`

Now all you need to do is get your fluxbox to crash. Your core file will be in your \$HOME directory and a file named "core" depending on your system.

It may be more convenient to run fluxbox on a second x server. You can do this by running the following command

` $ startx /path/to/fluxbox -- :1`

When your fluxbox crashes, this will return you to your desktop instead of a tty.

Getting a Backtrace
-------------------

If you're reading this, you've almost certainly been told to get a backtrace from a crash. Once you have a core file, you're almost ready to get the backtrace. If you don't have it, you will need to install \`gdb'. Then, run the following command:

` $ gdb /path/to/fluxbox /path/to/core`

You will see a lot of output, followed by a prompt that looks like this:

` (gdb)`

Type \`bt', press enter, and you will be presented with the backtrace. You can exit the program by typing \`q', followed by enter.

[Category:Debugging howtos](Category:Debugging howtos "wikilink") [Category:English howtos](Category:English howtos "wikilink")
