{ pkgs, ... }:
{
  imports = [
    telescope.nix
  ];
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;
        theme = {
          enable = true;
          name = "catppuccin";
          style = "mocha";
          transparent = true;
        };
        lsp = {
          enable = true;
        };
      };
    };
  };
}
