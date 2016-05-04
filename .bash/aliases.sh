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
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cdwww="cd /var/www"
alias cdcol="cd /var/www/scrapwalls"
alias cdporn="cd /var/www/rand-porn"
alias cdops="cd /var/www/ops"
alias cdbash="cd ~/.bash"

# Syfmony aliases
alias console="php app/console"
alias symf-go="console cache:clear && console server:run"
alias cache-clear-dev="sudo rm -rf app/cache/* && console cache:clear --env=dev && sudo chmod -R 777 app/cache/*"
alias symf-go-mobile="cache-clear-dev; sudo php app/console server:run `python -c 'import socket; print(socket.gethostbyname(socket.gethostname()))'`:80"

# Git aliases
alias gs="git status"
alias gcob="git checkout -b"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gmt="git mergetool"
alias ganw="git diff -w --no-color | git apply --cached --ignore-whitespace"

# Package management
alias agi="sudo apt-get install -y"
alias agr="sudo apt-get remove"

# Use neovim in place of vim
alias vim="nvim"

# PHP ctags (for php patched ctags: https://github.com/shawncplus/phpcomplete.vim/wiki/Patched-ctags"
alias php-ctags="ctags -R --fields=+aimSl --languages=PHP,JavaScript --exclude=@.ctagsignore ."

# Tmux Alias (for 256 color term)
alias tmux="tmux -2"

# Resize command line window (https://gist.github.com/tschwemley/f588322204d5bf9c1132975672ed1a06)
alias resize-win="bash ~/resize-window.sh 1080 1820"
