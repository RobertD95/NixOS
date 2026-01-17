{ config, pkgs, ...}:

{
	# Greeter Ly
	services.displayManager.ly.enable = true;

    # Security Polkit
    security.polkit.enable = true;
    
    # Gnome Keyring
    services.gnome.gnome-keyring.enable = true;
    
	# Hyprland
	programs.hyprland = {
                enable = true;
        };

    xdg.portal = {
        enable = true;
        extraPortals = [
            pkgs.xdg-desktop-portal-gtk
        ];
    };


        environment.systemPackages = [
                pkgs.hyprpaper
                pkgs.hyprsunset
                pkgs.hyprshot
                pkgs.hyprtoolkit
                pkgs.polkit_gnome
                pkgs.uwsm
                pkgs.wofi
        ];

	# KDE Plasma
	services.desktopManager.plasma6.enable = true;
	environment.plasma6.excludePackages = [
		pkgs.kdePackages.elisa
		pkgs.kdePackages.konsole
		pkgs.kdePackages.kate
	];
}
