{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.pavucontrol
    pkgs.qjackctl
  ];
}