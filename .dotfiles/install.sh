#!/usr/env sh

# This script is meant to be ran via curl piping
git clone --bare https://github.com/tschwemley/dotfiles $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/.cfg/ --work-tree=$HOME'
config checkout
config config status.showUntrackedFiles no

# Bootstrap the dotfiles
./bootstrap.sh
