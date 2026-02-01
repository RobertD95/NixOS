{ pkgs, ... }:
let
  obs-plugins = pkgs.obs-studio-plugins;
in
{
  programs = {
		neovim = {
			enable = true;
			defaultEditor = true;
        	};
		obs-studio = {
			enable = true;
			package = pkgs.obs-studio;
			plugins = [ obs-plugins.obs-multi-rtmp obs-plugins.obs-vkcapture ];
		};
		droidcam = {
      enable = true;
    };
    appimage = {
      enable = true;
      binfmt = true;
      package = pkgs.appimage-run;
    };
    kdeconnect = {
      enable = true;
      #package = pkgs.kdePackages.kdeconnect-kde;
    };
  };
}
