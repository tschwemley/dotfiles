{ pkgs, config, ... }:

let
  shellAliases = {
    config = "git --git-dir=$HOME/.dotfiles/.cfg/ --work-tree=$HOME";
    g = "git";
    gco = "git checkout";
    gcob = "git checkout -b";
    hm = "home-manager";
    hms = "home-manager switch";
    hme = "nvim $HOME/.config/nixpkgs/home/users/$USER.nix";
    l = "ls -l";
    ll = "ls -al";
    lt = "ls --tree";
    switch = "home-manager switch && exec zsh";
  };
in
{
  programs.zsh.enable = true;
  programs.zsh.autocd = true;
  programs.zsh.defaultKeymap = "vicmd";
  programs.zsh.enableAutosuggestions = true;
  programs.zsh.enableCompletion = true;
  programs.zsh.history = {
      extended = true; # store timestamps w/ history
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
  programs.zsh.shellAliases = shellAliases;
  
  # Prompt
  programs.oh-my-posh = {
    enable = true;
    useTheme = "zash";
  };
}
