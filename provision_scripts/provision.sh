#!/bin/bash
#####################################
# This takes a long long long time
# like over an hour, maybe more
# depending on your CPU & Memory etc.
# You can speed this up BIG TIME by
# commenting out these lines
yum -y install haskell-platform git &&
cabal update && 
cabal install zip-archive-0.2.3.1 &&
cabal install pandoc

# And uncommmenting the one below this:
# yum -y install haskell-platform pandoc git


# Please note that by doing the above you end up with a much
# older version of pandoc. Using the long slow method of cabal
# gets you the newest version of pandoc. Sometimes that is more
# imprtant than the time it takes, other times not..
