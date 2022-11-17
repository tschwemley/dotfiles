# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/powerlevel10k/powerlevel10k.zsh-theme


[ -f ~/.profile ] && source ~/.profile

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

[ -f ~/.dotfiles/aliases.sh ] && source ~/.dotfiles/aliases.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# If running Kitty alias ssh to avoid issues with remotes that don't have terminfo
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

autoload -Uz compinit && compinit
