{ pkgs, lib, ... }:
{
  #  programs = {
  #    appimage = {
  #      # AppImage
  #      enable = true;
  #      binfmt = true;
  #    };
  #  };
  environment.systemPackages = with pkgs; [
    appimageupdate
  ];
}
