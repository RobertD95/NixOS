{ pkgs, inputs, ... }:
let
  unstable = inputs.nixpkgs-unstable.legacyPackages.${pkgs.system};
in

{
	  programs = {
      hyprland = {
		    enable = true;
		    package = unstable.hyprland;
        withUWSM = false;
      };
#      uwsm = {
#        enable = true;
#        package = unstable.uwsm;
#      };  
	  };

 	  # Security Polkit
	  security.polkit.enable = true;
  
  services = { 
      xserver = { enable = true; };
      # Greeter Ly
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

	
	# Hyprland Stuff (Stable)
	environment.systemPackages = [
		pkgs.hyprpaper
		pkgs.hyprsunset
		pkgs.hyprshot
		pkgs.hyprtoolkit
		pkgs.polkit_gnome
		pkgs.wofi
	];

}
