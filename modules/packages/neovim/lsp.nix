{ pkgs, ... }:
{
  programs.nvf.settings.vim = {
    languages = {
      nix = {
        enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
      bash = {
        enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
      python = {
        enable = true;
        lsp.enable = true;
        treesitter.enable = true;
      };
    };
    lsp = {
      enable = true;
      formatOnSave = true;
    };
    autocomplete.nvim-cmp.enable = true;
  };
}
