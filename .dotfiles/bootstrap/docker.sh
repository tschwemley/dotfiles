# Install dive (https://github.com/wagoodman/dive)
# TODO: need to add install for other os types as well
if [[ $OSTYPE == "darwin"* ]]; then 
  brew install dive
  brew install ctop
fi

# Install ctop2 
# Install lazy docker
go install github.com/jesseduffield/lazydocker@latest


