{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.git
    pkgs.github-desktop
  ];
}