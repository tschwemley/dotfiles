#!/bin/sh

# check if brew is installed; install if not
if ! command -v brew &> /dev/null
then
  mkdir homebrew
  curl -L https://github.com/Homebrew/brew/tarball/master
  tar xz --strip 1 -C homebrew
fi
