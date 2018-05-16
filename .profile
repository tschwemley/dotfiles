# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# I only use 2 windows user names in my environments. If it's not one, use other
WINDOWS_USER=tjsch
if [ -e /mnt/c/Users/tschwemley ] ; then
    WINDOWS_USER=tschwemley
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# Export PATH(s)
export PATH=$PATH:/usr/local/go/bin

# Environment variables to be set during start up
export TERM="xterm-256color"

export DOCKER_HOST=tcp://0.0.0.0:2375

export GOROOT=/mnt/c/Go/
export GOPATH=/mnt/c/Users/$WINDOWS_USER/go

export WINDOWS_USER
