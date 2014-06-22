This is a question that is often asked in #fluxbox. This is pretty simple. 

You need to edit your [[.xinitrc]] file. You can do this in one command by running:

  echo "exec startfluxbox" > ~/.xinitrc

If you want a consolekit session then you need:
  exec ck-launch-session dbus-launch --sh-syntax --exit-with-session startfluxbox

Which ever method you use as long as '''[[Howto_edit_the_startup_file|startfluxbox]]''' is in your '''[[$PATH]]''' then it should work just fine.

[[Category:English howtos]]
[[Category:Integration/Startup howtos]]