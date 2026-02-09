{ inputs, pkgs, ... }:
  let
    system = "x86_64-linux";
    nix = inputs.nix.legacyPackages.${system};
    nyx = inputs.nyx.legacyPackages.${system};
    hytale = inputs.hytale.packages.${system};
  in
{
  environment.systemPackages = [
    hytale.hytale-launcher
  ];
  nixpkgs.config.allowUnfreePredicate = [
    nyx.discord-krisp
  ];  
}
