{ pkgs, inputs, ... }:
let
  nix = inputs.nix.legacyPackages.x86_64-linux;
  nyx = inputs.nyx.legacyPackages.x86_64-linux;
in
{
  # Hyprland
  programs = {
    hyprland = {
      enable = true;
      withUWSM = true;
      package = nix.hyprland;
    };
    uwsm = {
      enable = true;
    };
  };
}

