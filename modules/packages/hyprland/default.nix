{ pkgs, inputs, ... }:
#let
#  hypr = inputs.hyprland.packages.x86_64-linux;
#in
{
  # Hyprland
  programs = {
    hyprland = {
      enable = true;
      withUWSM = true;
      package = pkgs.hyprland;
      portalPackage = pkgs.xdg-desktop-portal-hyprland;
    };
  };
}
