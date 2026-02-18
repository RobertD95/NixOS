{ pkgs, ... }:
{
  programs = {
    appimage = {	# AppImage
      enable = true;
      binfmt = true;
      package = pkgs.appimage-run;
    };
  };
}