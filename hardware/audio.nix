{ pkgs, ... }:
{
  hardware = {
    bluetooth = {
      enable = true;
    };
  };
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

  environment.systemPackages = [
    pkgs.bluetui
    pkgs.pavucontrol
    pkgs.qjackctl
  ];
}
