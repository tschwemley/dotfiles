#!/bin/bash

#Get path to script itself
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"

# Clean any pre-existing files and add necessary dirs
if [ ! -d /home/$USER/.config ] ; then
    mkdir /home/$USER/.config
fi

if [ ! -d /home/$USER/.config/nvim ] ; then
    mkdir /home/$USER/.config/nvim
fi

if [ -e /home/$USER/.bashrc ] ; then
    rm /home/$USER/.bashrc
fi

if [ -e /home/$USER/.profile ] ; then
    rm /home/$USER/.profile
fi

if [ -e /home/$USER/.bash ] ; then
    rm -r /home/$USER/.bash
fi

if [ -e /home/$USER/.tmux.conf ] ; then
    rm /home/$USER/.tmux.conf
fi

if [ -e /home/$USER/.gitconfig ] ; then
    rm /home/$USER/.gitconfig
fi

if [ -e /home/$USER/.config/nvim/init.vim ] ; then
    rm /home/$USER/.config/nvim/init.vim
fi

ln -s $DIR/.bash /home/$USER/.bash
ln -s $DIR/.tmux.conf /home/$USER/.tmux.conf
ln -s $DIR/.bashrc /home/$USER/.bashrc
ln -s $DIR/.profile /home/$USER/.profile
ln -s $DIR/.gitconfig /home/$USER/.gitconfig
ln -s $DIR/.config/nvim/init.vim /home/$USER/.config/nvim/init.vim

# Install nvim plugin manager
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

source /home/$USER/.bashrc
