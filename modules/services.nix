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
                extraConfig.pipewire."91-null-sinks" = {
                       "context.objects" = [
    {
      # A default dummy driver. This handles nodes marked with the "node.always-driver"
      # properyty when no other driver is currently active. JACK clients need this.
      factory = "spa-node-factory";
      args = {
        "factory.name"     = "support.node.driver";
        "node.name"        = "Dummy-Driver";
        "priority.driver"  = 8000;
      };
    }
    {
      factory = "adapter";
      args = {
        "factory.name"     = "support.null-audio-sink";
        "node.name"        = "Microphone-Proxy";
        "node.description" = "Microphone";
        "media.class"      = "Audio/Source/Virtual";
        "audio.position"   = "MONO";
      };
    }
    {
      factory = "adapter";
      args = {
        "factory.name"     = "support.null-audio-sink";
        "node.name"        = "Main-Output-Proxy";
        "node.description" = "Main Output";
        "media.class"      = "Audio/Sink";
        "audio.position"   = "FL,FR";
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
