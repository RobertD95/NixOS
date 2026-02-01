{ pkgs, ... }:
let
  editors = [
    pkgs.blockbench
    pkgs.git
    pkgs.github-desktop
    pkgs.kdePackages.kdenlive
    pkgs.obsidian
  ];
  social = [
    pkgs.discord
    pkgs.telegram-desktop
  ];
  other = [
  	pkgs.gnome-disk-utility         # Disk Utility
		pkgs.librewolf                  # Web Browser
		pkgs.resources                  # System Monitoring Program
    pkgs.usbutils
		pkgs.vlc                        # Video Player
  ];
in
{
	environment.systemPackages = editors ++ social ++ other;
}
