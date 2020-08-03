#!/bin/bash

#######################################
#               Aliases               #
#######################################

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# File nav aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'
alias cdwww="cd /var/www"
alias cdnmi="cd /var/www/nm-gateway"
alias cdbash="cd ~/.bash"
alias cddl="cd /mnt/c/Users/tjsch/Downloads"
alias cdc="cd /mnt/c/"
alias cdad="cd /mnt/c/Users/tjsch/AppData"
alias cdgo="cd /mnt/c/gocode/src"
alias cdnode="cd /mnt/c/node"

# Git aliases
alias gcob="git checkout -b"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gmt="git mergetool"
alias ganw="git diff -w --no-color | git apply --cached --ignore-whitespace"
alias git-review="vim \$(git status --porcelain | awk '{print $2}')"

# Package management
alias agi="sudo apt-get install -y"
alias agr="sudo apt-get remove"
alias yum="sudo yum"

# Use neovim in place of vim
alias vim="nvim"

# Tmux Alias (for 256 color term)
alias tmux="tmux -2"

# Resize command line window (https://gist.github.com/tschwemley/f588322204d5bf9c1132975672ed1a06)
alias resize-win="bash ~/resize-window.sh 1080 1820"

