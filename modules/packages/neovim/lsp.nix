{ pkgs, ... }:
{
        programs.nvf.settings.vim = {
                languages.nix.enable = true;
                lsp = {
                        enable = true;

                };
        };
}
