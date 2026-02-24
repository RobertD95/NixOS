{ pkgs, lib, ... }:
{
  programs = {
    appimage = {
      # AppImage
      enable = true;
      binfmt = true;
    };
  };
}

