{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.copyq
  ];
}