{ pkgs, ... }:
{
  imports = [
    config.nix
  ];
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;
        lsp = {
          enable = true;
        };
      };
    };
  };
  # vim = {
  #   theme = {
  #   enable = true;
  #   name = "catppucin";
  #   style = "mocha";
  #   };
  # }
}