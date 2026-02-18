{ pkgs, inputs, ... }:
{
  imports = [
    ./hardware.nix
		./networking.nix
		./programs.nix
		./security.nix
    ./services.nix
    ./packages
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

  nix = { # Delete Old Versions & Optimize Nix Store
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 1d";
  };
    settings.auto-optimise-store = true;
	};

  system.autoUpgrade = {  # Update
		enable = true;
		dates = "weekly";
	};
  
}