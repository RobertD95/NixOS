{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    github-desktop
  ];
}

