{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    qjackctl
    helvum
  ];
}

