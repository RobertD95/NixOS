{ pkgs, ... }:
{
  programs = {
    steam = {
      enable = true; # Gaming
      package = pkgs.steam-run;
    };
  };
}
