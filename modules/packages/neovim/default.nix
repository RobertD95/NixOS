{ pkgs, ... }:
{
  imports = [
    config.nix
  ];
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        theme = {
        enable = true;
        name = "catppucin";
        style = "mocha";
        };
        viAlias = true;
        vimAlias = true;
        lsp = {
          enable = true;
        };
      };
    };
  };
}