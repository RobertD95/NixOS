{ pkgs, ... }:
{
        programs.nvf.settings.vim.navigation.harpoon = {
                enable = true;        
                mappings = {
                        markFile = "m";
                        listMarks = "l";
                        file1 = "<C-j>";
                        file2 = "<C-k>";
                        file3 = "<C-l>";
                        file4 = "<c-;>";
                };
        };
}
