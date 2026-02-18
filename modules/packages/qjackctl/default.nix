{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.qjackctl
  ];
}