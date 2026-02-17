{ config, pkgs, lib, inputs, ... }:
{
	imports = [
		./hardware-configuration.nix
		./system.nix
	];
    
	boot.kernelPackages = inputs.nyx.legacyPackages.x86_64-linux.linuxPackages_cachyos;
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	nix.settings.experimental-features = [ "nix-command" "flakes" ];
	nixpkgs.config.allowUnfree = true;

	time.timeZone = "America/Vancouver";
	i18n.defaultLocale = "en_CA.UTF-8";
	
	users.users.robby = {
		isNormalUser = true;
		description = "robby";
		extraGroups = [ "networkmanager" "wheel" ];
	};

	networking = {
		hostName = "Tea";
		firewall = {
			enable = true;
			allowedTCPPorts = [];
			allowedUDPPorts = [ 5520 ];
		};

		proxy.noProxy = "10.0.0.70, localhost, internal.domain";
		networkmanager.enable = true;
	};

	security = {
		polkit.enable = true;
		rtkit.enable = true;
  
	};
	hardware.bluetooth.enable = true;		# Bluetooth
		services = {				#Audio
			pulseaudio.enable = false;
			pipewire = {
				enable = true;
				alsa.enable = true;
				alsa.support32Bit = true;
				pulse.enable = true;
				jack.enable = true;
				#media-session.enable = true;
			};
			# Keyboard
			printing.enable = true;
			xserver.xkb = {
				layout = "us";
				variant = "";
			};
			gnome.gnome-keyring.enable = true;
			};

	environment.systemPackages = [
		pkgs.home-manager
		# Audio
		pkgs.pavucontrol
		pkgs.qjackctl
		# Bluetooth
		pkgs.bluetui
	];

	system.autoUpgrade = {
		enable = true;
		dates = "weekly";
	};

	nix = {
		gc = {
			automatic = true;
			dates = "daily";
			options = "--delete-older-than 1d";
		};
		settings.auto-optimise-store = true;
	};
	system.stateVersion = "25.11";
}
