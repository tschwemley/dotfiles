# Load all alias files in .dotfiles/aliases
for f in ~/.dotfiles/aliases/* ;
do 
  source $f
done


# Use neovim in place of vim
alias vim="lvim"
