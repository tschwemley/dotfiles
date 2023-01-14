{ ... }:

let
  extraConfig = ''
local wezterm = require 'wezterm'

if wezterm.is_windows then
  wezterm.add_shell {
    name = "WSL",
    command = [[C:\Windows\System32\bash.exe]],
    args = [[-c wsl]],
    when = "windows",
  }
end

return {
  audible_bell = "Disabled",
  color_scheme = "Gruvbox dark, medium (base16)",
  font = wezterm.font("Hasklug Nerd Font"),
  font_size = 14,
  enable_wayland = false,
  unix_domains = {
  },
}
  '';
in
{
  programs.wezterm.enable = true;
  programs.wezterm.extraConfig = extraConfig;
}

