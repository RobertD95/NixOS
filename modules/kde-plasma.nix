{ pkgs, ... }:
let
  kdepkg = pkgs.kdePackages;
in
{
  services = {
    desktopManager = {
      plasma6 = {
        enable = true;
      };
    };
  };
  environment = {
    plasma6 = {
      excludePackages = [
          kdepkg.elisa
          kdepkg.konsole
          kdepkg.kate
      ];
    };
  };
}
