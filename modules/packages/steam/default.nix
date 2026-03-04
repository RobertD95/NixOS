{ pkgs, inputs, ... }:
let
  nyx = inputs.nyx.legacyPackages.x86_64-linux;
in
{
  programs = {
    steam = {
      enable = true; # Gaming
      package = pkgs.steam.override {
        extraPkgs =
          pkgs: with nyx; [
            mangohud_git
            gamescope_git
          ];
      };
    };
  };
}
