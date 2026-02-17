{ pkgs, inputs, ... }:
let
	nix = inputs.nix.legacyPackages.x86_64-linux;
	nyx = inputs.nyx.legacyPackages.x86_64-linux;
	kdepkg = pkgs.kdePackages;
in
{
	# GPU
	hardware = {
		graphics = {
			enable = true;
			package = nyx.mesa_git;
			enable32Bit = true;
			package32 = nyx.mesa32_git;
		};
		amdgpu = {
			initrd.enable = true;
			opencl.enable = true;
		};
	};

	# LY Greeter
	services.displayManager.ly = {
		enable = true;
		settings.setup_cmd = "/etc/nixos/scripts/hyprland-uwsm-ly-setup.sh";
	};
	
	# Hyprland
	programs = {
		hyprland = {
			enable = true;
			withUWSM = true;
			package = nix.hyprland;
		};
		uwsm.enable= true;
	};
	services.lact.enable = true;

	# Hyprland Stuff (Stable)
	environment.systemPackages = [
		pkgs.alacritty
		pkgs.dunst
		pkgs.kdePackages.ark
		pkgs.kdePackages.dolphin
		pkgs.libnotify
		pkgs.nwg-look #style change tool
		pkgs.waybar
		pkgs.wofi
		# GPU
		nyx.libdrm_git
		nyx.libdrm32_git
		# Other
		pkgs.git
		pkgs.ffmpeg
		pkgs.qtalarm
	];

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
