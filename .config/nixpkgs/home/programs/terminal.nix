{ ... }:

let
	extraConfig = toString ../config/wezterm/wezterm.lua;
in
{
  programs.wezterm.enable = true;
  programs.wezterm.extraConfig = extraConfig;
}

