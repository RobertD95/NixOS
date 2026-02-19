{ pkgs, ... }:
{
  imports = [
    # config.nix
  ];
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        theme = {
          enable = true;
          name = "catppuccin";
          style = "mocha";
          transparent_background = true;
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