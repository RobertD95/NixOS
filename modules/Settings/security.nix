{ pkgs, ... }:
{
  security = {
    polkit = {
      enable = true;
    };
  };
  services = {
    gnome.gnome-keyring.enable = true;
  };
  environment.systemPackages = [
    pkgs.polkit_gnome
  ];
}
