{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, ... } @ inputs:
	let
		pkgs = nixpkgs.legacyPackages.x86_64-linux;
		unstable = nixpkgs-unstable.legacyPackages.x86_64-linux;
  in{
    nixosConfigurations.Tea = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [ ./configuration.nix ];
    };
  };
}
