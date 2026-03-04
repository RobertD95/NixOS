{ pkgs, ... }:
{
  programs = {
    steam = {
      enable = true; # Gaming
      package = pkgs.steam.override {
        extraPkgs =
          pkgs: with pkgs; [

          ];
      };
    };
  };
}
