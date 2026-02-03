{ pkgs, ... }:
let
  obs-plugins = pkgs.obs-studio-plugins;
  editors = [
    pkgs.blockbench
    pkgs.git
    pkgs.github-desktop
    pkgs.kdePackages.kdenlive
    pkgs.obsidian
  ];
  social = [
    pkgs.discord
    pkgs.telegram-desktop
  ];
  other = [
  	pkgs.gnome-disk-utility         # Disk Utility
		pkgs.librewolf                  # Web Browser
		pkgs.resources                  # System Monitoring Program
    pkgs.usbutils
		pkgs.vlc                        # Video Player
  ];
in
{
  services = {
    flatpak = {
      enable = true;
      package = pkgs.flatpak;
    };
  };
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
    appimage = {
      enable = true;
      binfmt = true;
      package = pkgs.appimage-run;
    };
    droidcam.enable = true;
    kdeconnect.enable = true;
  };
  virtualisation = {
    waydroid = {
      enable = true;
      package = pkgs.waydroid-nftables;
    };
  };
  environment.systemPackages = editors ++ social ++ other;
}
