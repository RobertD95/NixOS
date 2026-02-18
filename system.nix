{ pkgs, inputs, ... }:
let
	nix = inputs.nix.legacyPackages.x86_64-linux;
	nyx = inputs.nyx.legacyPackages.x86_64-linux;
	kdepkg = pkgs.kdePackages;
in
{

	services.udisks2.enable = true;

	# Fonts
	fonts.packages = [
		pkgs.font-awesome
		pkgs.nerd-fonts.jetbrains-mono
		pkgs.nerd-fonts.noto
		pkgs.nerd-fonts.fira-code
		pkgs.nerd-fonts.hack
	];
	
	# Programs
	services.flatpak = {
		enable = true;
		package = pkgs.flatpak;
	};

	programs = {
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
