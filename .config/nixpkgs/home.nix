{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "tschwemley";
  home.homeDirectory = "/home/tschwemley";

  home.packages = [
    pkgs.hledger
    pkgs.go
    pkgs.lazydocker
    pkgs.lazygit
    pkgs.lua
    pkgs.luakit
    pkgs.mariadb
    pkgs.navi
    pkgs.neovim
    pkgs.nodejs
    pkgs.python310Packages.pip
    pkgs.python311
    pkgs.ripgrep
    pkgs.rustc
    pkgs.taskwarrior
    pkgs.thefuck
    pkgs.unzip
    pkgs.zig
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
}
