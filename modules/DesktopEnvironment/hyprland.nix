{ pkgs, inputs, ... }:
let
  unstable = inputs.nixpkgs-unstable.legacyPackages.${pkgs.system};
in

{
  services.displayManager.ly.enable = true;
	
  programs = {
    hyprland = {
		  enable = true;
		  package = unstable.hyprland;
      withUWSM = false;
      xwayland.enable = true;
    };
#   uwsm = {
#     enable = true;
#     package = unstable.uwsm;
#   };  
	};


	# Hyprland Stuff (Stable)
	environment.systemPackages = [
    pkgs.alacritty
		pkgs.hyprpaper
		pkgs.hyprsunset
		pkgs.hyprshot
		pkgs.hyprtoolkit
    pkgs.libnotify
    pkgs.nwg-look #style change tool
    pkgs.swaynotificationcenter
    pkgs.waybar
		pkgs.wofi
	];

}
