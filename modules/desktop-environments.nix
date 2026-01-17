{ config, pkgs, ...}:

{
	# Greeter Ly
	services.displayManager.ly.enable = true;

    # Security Polkit
    security.polkit.enable = true;
    
	# Hyprland
	programs.hyprland = {
                enable = true;
                portalPackage = pkgs.xdg-desktop-portal-hyprland;
        };

        environment.systemPackages = [
                pkgs.hyprpaper
                pkgs.hyprsunset
                pkgs.hyprshot
                pkgs.hyprtoolkit
                pkgs.wofi
                pkgs.polkit_gnome
        ];

	# KDE Plasma
	services.desktopManager.plasma6.enable = true;
	environment.plasma6.excludePackages = [
		pkgs.kdePackages.elisa
		pkgs.kdePackages.konsole
		pkgs.kdePackages.kate
	];
}
