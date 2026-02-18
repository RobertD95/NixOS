{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.wofi
  ];
}