{ pkgs, ... }:
{
  programs.kdeconnect.enable = true;
  environment.systemPackages = [
    pkgs.kdePackages.ark
    pkgs.kdePackages.dolphin
  ];
}