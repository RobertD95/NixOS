{ pkgs, ... }:
{
  imports = [
    ./telescope.nix
    ./theme.nix
    ./neo-tree.nix
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
