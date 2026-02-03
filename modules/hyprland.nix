{ pkgs, inputs, ... }:
let
  unstable = inputs.nixpkgs-unstable.legacyPackages.${pkgs.system};
in

{
  services.displayManager.ly = {
    enable = true;
    settings = {
      setup_cmd = "/etc/nixos/scripts/hyprland-uwsm-ly-setup.sh";
    };
  };
	
  programs = {
    hyprland = {
		  enable = true;
      withUWSM = true;
		  package = unstable.hyprland;
      xwayland.enable = true;
    };
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
