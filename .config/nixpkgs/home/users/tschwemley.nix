{ config, pkgs, ... }:

{

# Home Manager needs a bit of information about you and the
# paths it should manage.
  home.username = "tschwemley";
  home.homeDirectory = "/home/tschwemley";

  home.packages = with pkgs; [
    cargo
    curl
    gcc
    go
    httpie
    jq
    lazydocker
    lazygit
	lua51Packages.lua
	lua51Packages.luarocks
    luakit
    manix
    mariadb
    nb
    # neovim
    nodejs
    ripgrep
    taskwarrior
	tidyp
	tldr
    unzip
	zk
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

# Automatically set env vars to ease usage on non-NixOS linux
# TODO: should this be a derivation?
  targets.genericLinux.enable = true;

# Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
