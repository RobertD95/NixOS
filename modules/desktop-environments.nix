{ config, pkgs, ...}:

{
	# Greeter Ly
	services = { 
		displayManager.ly.enable = true;

	# Gnome Keyring
		gnome.gnome-keyring.enable = true;
	
	# KDE Plasma
		desktopManager.plasma6.enable = true;
	};
	# Remove KDE Plasma Bloat
	environment.plasma6.excludePackages = [
		pkgs.kdePackages.elisa
		pkgs.kdePackages.konsole
		pkgs.kdePackages.kate
	];

	# Security Polkit
	security.polkit.enable = true;
	
	# Hyprland Stuff (Stable)
	environment.systemPackages = [
		pkgs.hyprpaper
		pkgs.hyprsunset
		pkgs.hyprshot
		pkgs.hyprtoolkit
		pkgs.polkit_gnome
		pkgs.uwsm
		pkgs.wofi
	];

}
