{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.bluetui
  ];
}