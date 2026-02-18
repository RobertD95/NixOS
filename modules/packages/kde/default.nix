{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.kdePackages.ark
    pkgs.kdePackages.dolphin
  ];
}