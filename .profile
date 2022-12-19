export PATH=$PATH:$HOME/.local/bin:$HOME/go/bin:/usr/local/go/bin

if [ -e /home/$USER/.nix-profile/etc/profile.d/nix.sh ]; then . /home/$USER/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
