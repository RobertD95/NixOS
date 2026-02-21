{ pkgs, ... }:
{
  imports = [
    ./harpoon.nix
    ./lsp.nix
    ./neo-tree.nix
    ./telescope.nix
    ./theme.nix
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
}
