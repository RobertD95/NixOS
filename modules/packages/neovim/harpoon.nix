{ pkgs, ... }:
{
        programs.nvf.settings.vim.navigation.harpoon = {
                enable = true;        
                mappings = {
                        markFile = "a";
                        listMarks = "o";
                        file1 = "<C-h>";
                        file2 = "<C-j>";
                        file3 = "<C-k>";
                        file4 = "<c-l>";
                };
        };
}
