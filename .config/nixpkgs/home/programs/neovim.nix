# Managing neovim through home-manager offers some conveniences like wrappers around common config
# in addition to the benefits of having builds be reproducible
{ ... }:

{
	 programs.neovim = {
	   enable = true;
	   defaultEditor = true;
	  #  extraConfig = ''
		 # set number relativenumber
	  #  '';
	  vimAlias = true;
	 };
}
