{ pkgs, ... }:
{
  programs = {
    appimage = {
      # AppImage
      enable = true;
      binfmt = true;
      package = pkgs.appimage-run.override {
        extraPKGS = pkgs: [
          pkgs.libxshmfench
          pkgs.xorg.libX11
          pkgs.libGL
        ];
      };
    };
  };
}

