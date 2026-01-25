{ config, pkgs, ... }:
{
	# Bootloader.
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	networking.hostName = "Tea"; # Define your hostname.
	# networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

	# Configure network proxy if necessary
	# networking.proxy.default = "http://user:password@proxy:port/";
	# networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

	# Enable networking
	networking.networkmanager.enable = true;

	# Set your time zone.
	time.timeZone = "America/Vancouver";

	# Select internationalisation properties.
	i18n.defaultLocale = "en_CA.UTF-8";

	# x11 Windows
	services.xserver.enable = true;

	# Configure keymap in X11
	services.xserver.xkb = {
		layout = "us";
		variant = "";
	};

	# Enable CUPS to print documents.
	services.printing.enable = true;

	# Enable sound with pipewire.
	services.pulseaudio.enable = false;
	security.rtkit.enable = true;
	services.pipewire = {
		enable = true;
		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
		jack.enable = true;
		#media-session.enable = true;
	};

	# Enable touchpad support (enabled default in most desktopManager).
	# services.xserver.libinput.enable = true;

	# Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.robby = {
		isNormalUser = true;
		description = "robby";
		extraGroups = [ "networkmanager" "wheel" ];
	};

	# Allow unfree packages
	nixpkgs.config.allowUnfree = true;

	#programs.mtr.enable = true;
	#programs.gnupg.agent = {
	#	enable = true;
	#	enableSSHSupport = true;
	#};

	# Enable the OpenSSH daemon.
	#services.openssh.enable = true;
}
