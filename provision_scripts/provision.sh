#!/bin/bash

yum -y install haskell-platform &&
cabal update && 
cabal install zip-archive-0.2.3.1 &&
cabal install pandoc
