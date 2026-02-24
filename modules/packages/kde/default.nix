{ pkgs, ... }:
{
  programs.kdeconnect.enable = true;
  environment.systemPackages = with pkgs; [
    kdePackages.ark
    kdePackages.dolphin
  ];
}

