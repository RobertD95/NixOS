{ pkgs, ... }:
let
	obs-plugins = pkgs.obs-studio-plugins;
in {
	# Program Options
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
  virtualisation = {
    waydroid = {
      enable = true;
      package = pkgs.waydroid-nftables;
    };
  };
	# Hardware Options
	hardware = {
		bluetooth = {
			enable = true;
		};
	};
	# Service Options
	services = {
		flatpak = {
			enable = true;
      package = pkgs.flatpak;
		};
	};

	environment.systemPackages = with pkgs; [
		pkgs.alacritty                  # Terminal
		pkgs.appimage-run               # AppImage
		pkgs.blockbench           			# Editing Tool
		pkgs.bluetui                    # Bluetooth Manager
		pkgs.discord                    # Gaming Chat
    pkgs.git
		pkgs.github-desktop             # Github Desktop Program
		pkgs.gnome-disk-utility         # Disk Utility
		pkgs.kdePackages.kdenlive       # Video Editor
		pkgs.librewolf                  # Web Browser
    pkgs.libnotify                  # Notifications
		pkgs.nwg-look                   # Customization for Hyprland
		pkgs.obsidian                   # Note Taking Tool
		pkgs.pavucontrol                # Audio Controller
		pkgs.protonup-qt                # Proton Updater
		pkgs.qjackctl                   # Audio Channeller Tool
		pkgs.r2modman
		pkgs.resources                  # System Monitoring Program
		pkgs.swaynotificationcenter     # Notifications
		pkgs.telegram-desktop           # Phone/Desktop Chat
    pkgs.usbutils
		pkgs.vlc                        # Video Player
		pkgs.waybar                     # Bar to Utilize certain tools
	];
}
