[http://en.wikipedia.org/wiki/Git_%28software%29 git] is used to track changes to the source code of fluxbox during development. This is a small overview over the most important commands and work flows important to the developers.

The fluxbox developers encourage you to use git and help developing / improving fluxbox, no matter if you code or help out with the documentation or with the translation or whatever.

== Fetch and build ==

To get your very own copy of the whole fluxbox repository (including the complete history) you have to clone the repository:
 $ git clone git://git.fluxbox.org/fluxbox.git fluxbox.git

After this step you can cut off the network, you can develop completely without any connection to the world. To keep in sync with the latest "official" code just do

 $ cd fluxbox.git
 $ git pull

If you plan to change the code then:

 $ git config --global user.email Your.Email@domain.com
 $ git config --global user.name "Your Real Name"

so when you sent us patches your name will show up in the repository correctly (and we can point fingers if something crashed :))

== Modifying Code ==

Use your beloved editor and change the code, '<code>git-mv</code>' to rename files, '<code>git-add</code>' to add new files, '<code>git-rm</code>' to remove files from the repository. Check the current status of the working copy with

 $ git status

Every change you did is transfered to the repository the very moment you execute

 $ git commit

and this is transfered only to the current 'branch' you are in right now.

== Branching and Merging ==

Branching and merging is very powerful in git. You can create thousands of local branches, one for each bug you work on or feature you implement. It is good practice to do this because it safes your from accidentally pushing changes to another repository.

=== Creating and removing a branch ===

You create a branch 'bugfix123' from the 'master' branch:

 $ git checkout -b bugfix123 master

If your are done with the branch:

 $ git branch -d bugfix123

After that the complete branch is gone.

Another option for creating branches is to create a new clone; you can clone from your local repository as well:

 $ git clone fluxbox.git big_rewrite.git

For big changes this could be a good method to keep the working directory pretty clear from the leftovers of other branches.

=== List branches ===

Show all local branches:

 $ git branch

Show remote branches:
 
 $ git branch -r

=== Switch between branches ===

To easily switch between branches:

 $ git checkout 'branchname'

=== Merge ===

When you are done with the changes for the bugfix or the new feature, it's time to merge some branches. Even when you are working in a branch on a bugfix and the 'master' branch evolves, it's time to merge to reflect the latest changes into the current branch:

 $ git checkout to_check master
 $ git merge --squash --no-commit bugfix123
 $ git commit

Git would squash now all the 100 commits to your local branch 'bugfix123' to appear as ONE big commit. This way you can even work with your 'own' revision control on the bugfix without ending up with commit messages as fine as « what the f... is wrong here? » in the official repository.

=== Exchange patches / code ===

Especially for 'rogue' developers, it is important to give back the changes they made to the core developers somehow. To create a nice patch, use:

 $ git format-patch -C -k --stdout master..to_push > bugfix123.diff

Which would put all the changes made to fix the 'bug123' into the one file you can mail or attach to the issue tracker. In case you once receive such a patch, you can apply it with:

 $ git applymbox -k bugfix123.diff

Another way would to exchange chunks of code would be to create a bundle (compressed patch):
 
 $ git checkout to_check master
 $ git-bundle create bugfix123.bdl master..bugfix123

Which could be applied with:

 $ git-fetch bugfix123.bdl bugfix123:check_bugfix123

This would create a new branch 'check_bugfix123' where one can check if the bugfix really works.

== Tools ==

* [http://jonas.nitro.dk/tig/ tig] is a nice ncurses based git-viewer.

== Links and further information ==

Learn more about git:

* [http://git-scm.com/ Git official website]
* [http://en.wikipedia.org/wiki/Git_(software) Git on Wikipedia]
* [http://www.kernel.org/pub/software/scm/git/docs/everyday.html everyday Git in 20 commands or so]
* [http://oss.oracle.com/osswiki/GitRepositories/ForMaintainers Git for maintainers]
* [http://wiki.samba.org/index.php/Using_Git_for_Samba_Development Using Git for Samba development]
* [http://www.freedesktop.org/wiki/Infrastructure/git/Users Git at freedesktop.org]
* [http://cheat.errtheblog.com/s/git Git cheat sheet with common commands]
* [http://www-cs-students.stanford.edu/~blynn/gitmagic/index.html git magic]

[[Category:English howtos]]