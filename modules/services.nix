{ pkgs, ... }:
{
  services = {
    displayManager.ly = {
      # Enable LY & Fix (UWSM)
      enable = true;
      settings.setup_cmd = "/etc/nixos/scripts/hyprland-uwsm-ly-setup.sh";
    };
    xserver.xkb = {
      # Keyboard
      layout = "us";
      variant = "";
    };

        # Audio
        pulseaudio.enable = false;
        pipewire = {
                enable = true;
                alsa.enable = true;
                alsa.support32Bit = true;
                pulse.enable = true;
                jack.enable = true;
                #media-session.enable = true;
                extraConfig.pipewire."10-Virtual-Audio-Cable" = {
                        context.objects = [
                                {
                                        factory = "adapter";
                                        args = {
                                                "factory.name" = "support.null-audio-sink";
                                                "node.name" = "Game-Audio";
                                                "node.description" = "Game Audio";
                                                "media.class" = "Audio/Sink";
                                                "audio.position" = [ "FL" "FR" ];
                                        };
                                }
                        ];
                };
        };
    flatpak = {
      enable = true;
      package = pkgs.flatpak;
    };
    printing.enable = true; # Printer
    gnome.gnome-keyring.enable = true;
    lact.enable = true; # GPU Over and Under Clock
    udisks2.enable = true; # Used for KDE Dolphin
  };
}
