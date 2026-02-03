{config, lib, ... }:
{
  imports =
    let
      dirs = [
        ./hardware
        ./modules
        ./settings
        ];
      allFiles = builtins.concatLists (map (dir: lib.filesystem.listFilesRecursive dir) dirs);
    in
    lib.filter (lib.hasSuffix ".nix") allFiles;
      #[ ./hardware-configuration.nix ./modules/imports.nix ];

system.stateVersion = "25.11";
}
