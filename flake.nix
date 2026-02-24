{
  inputs = {
    pkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nix.url = "github:nixos/nixpkgs/nixos-unstable";
    nyx.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    nvf.url = "github:notashelf/nvf";
  };
  outputs =
    { self, nvf, ... }@inputs:
    {
      nixosConfigurations.Tea = inputs.pkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          nvf.nixosModules.default
          ./configuration.nix
        ];
      };
    };
}
