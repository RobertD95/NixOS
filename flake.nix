{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    nyxpkgs-unstable.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, nyxpkgs-unstable, ... } @ inputs:
  {
    nixosConfigurations.Tea = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./configuration.nix
        nyxpkgs-unstable.nixosModules.default
      ];
    };
  };
}
