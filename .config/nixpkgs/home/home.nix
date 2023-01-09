{ config, pkgs, ... }:

{

# Home Manager needs a bit of information about you and the
# paths it should manage.
  home.username = "tschwemley";
  home.homeDirectory = "/home/tschwemley";

  home.packages = [
    pkgs.go
    pkgs.lazydocker
    pkgs.lazygit
    pkgs.lua
    pkgs.luakit
    pkgs.manix
    pkgs.mariadb
    pkgs.neovim
    pkgs.nodejs
    pkgs.ripgrep
    pkgs.taskwarrior
    pkgs.unzip
  ];

# This value determines the Home Manager release that your
# configuration is compatible with. This helps avoid breakage
# when a new Home Manager release introduces backwards
# incompatible changes.
#
# You can update Home Manager without changing this value. See
# the Home Manager release notes for a list of state version
# changes in each release.
  home.stateVersion = "22.11";

# Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.oh-my-posh = {
    enable = true;
    # TODO: not sure which theme I want to go with yet
    # useTheme = "patriksvensson";
    useTheme = "zash";
  };

  programs.zsh = {
    autocd = true;
    defaultKeymap = "viins";
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    history = {
      extended = true; # store timestamps w/ history
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
    shellAliases = {
      g = "git";
      gco = "git checkout";
      gcob = "git checkout -b";
      l = "ls -l";
      ll = "ls -al";
      switch = "home-manager switch && exec zsh";
    };
  };
}
