{ ... }:
{
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
}