# FZF
# Set ag as the default source for fzf
#export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
export FZF_DEFAULT_COMMAND='ag -p ./.gitignore -g ""'
# Apply the command to ctrl-t as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

