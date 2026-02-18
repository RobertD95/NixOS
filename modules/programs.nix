{ pkgs, inputs, ... }:
let
  nix = inputs.nix.legacyPackages.x86_64-linux;
	nyx = inputs.nyx.legacyPackages.x86_64-linux;
in {
	# Hyprland
	programs = {
		hyprland = {
			enable = true;
			withUWSM = true;
			package = nix.hyprland;
		};
		uwsm = {
			enable= true;
		};
		steam = {
			enable = true;  # Gaming
		};
		java = {
			enable = true;
			package = pkgs.javaPackages.compiler.temurin-bin.jdk-25;
		};
		neovim = {	# Text Editor
			enable = true;
		};
		appimage = {	# AppImage
			enable = true;
			binfmt = true;
			package = pkgs.appimage-run;
		};
		droidcam.enable = true;
		kdeconnect.enable = true;
	};
}