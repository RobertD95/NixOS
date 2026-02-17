{
	inputs = {
		pkgs.url = "github:nixos/nixpkgs/nixos-25.11";
		nix.url = "github:nixos/nixpkgs/nixos-unstable";
		nyx.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
	};
  	outputs = { self, ... } @ inputs:
	{
		nixosConfigurations.Tea = inputs.pkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { inherit inputs; };
			modules = [
				./configuration.nix
			];
		};
	};
}
