{ inputs, ... }:
let
  hypr = inputs.hypr.packages.x86_64-linux;
in
{
  # Hyprland
  programs = {
    hyprland = {
      enable = true;
      package = hypr.hyprland;
    };
  };
}
