BIN_PATH=$HOME/bin

# Install zsh if it doesn't exist
# command zsh
# if [ $? -gt 0 ]
# then
#   sh -c "$(wget -O- https://raw.githubusercontent.com/romkatv/zsh-bin/master/install)"
# fi

# TODO: add addtional OS support
# if [[ $OSTYPE == "darwin"* ]]; then 
#   # Install mac prereqs and brew
#   ./mac.sh
#   
#   # Install htop
#   brew install htop
# fi

# install cheat.sh (cheat sheet)
if [ ! -f $BIN_PATH/cheat ]; then
  curl https://cht.sh/:cht.sh > "$BIN_PATH/cheat"
fi

# install lazygit
go install github.com/jesseduffield/lazygit@latest

