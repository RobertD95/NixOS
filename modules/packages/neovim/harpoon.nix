{ pkgs, ... }:
{
        programs.nvf.settings.vim.navigation.harpoon = {
                enable = true;        
                mappings = {
                        markFile = "<C-m>";
                        listMarks = "<C-n>";
                        file1 = "<C-j>";
                        file2 = "<C-k>";
                        file3 = "<C-l>";
                        file4 = "<C-;>";
                };
        };
}
