{ pkgs, ... }:
{
        services = {
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
                };
                flatpak = {
                        enable = true;
                        package = pkgs.flatpak;
                };
                playerctld = {
                        enable = true;
                        package = pkgs.playerctl;
                };
        printing.enable = true; # Printer
        gnome.gnome-keyring.enable = true;
        lact.enable = true; # GPU Over and Under Clock
        udisks2.enable = true; # Used for KDE Dolphin
        };
}
