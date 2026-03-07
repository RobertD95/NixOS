{ pkgs, inputs, ... }:
{
  programs = {
    steam = {
      enable = true; # Gaming
      package = pkgs.steam;
    };
  };
}
