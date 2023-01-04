# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ -e /home/$USER/.nix-profile/etc/profile.d/nix.sh ]; then 
	. /home/$USER/.nix-profile/etc/profile.d/nix.sh
fi


if [ -e ~/.config/powerlevel10k/powerlevel10k.zsh-theme ]; then 
	. ~/.config/powerlevel10k/powerlevel10k.zsh-theme
fi

if [ -e /home/$USER/init.sh ]; then 
	. /home/$USER/.profile
fi

if [ -e /home/$USER/.dotfiles/init.sh ]; then 
	. /home/$USER/.dotfiles/init.sh
fi

if [ -e /home/$USER/.p10k.zsh ]; then 
	. /home/$USER/.p10k.zsh
fi

autoload -Uz compinit && compinit

eval $(thefuck --alias)

export PATH=$PATH:$HOME/.local/bin:$HOME/go/bin:/usr/local/go/bin
