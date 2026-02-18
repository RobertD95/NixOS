{ config, pkgs, lib, inputs, ... }:
{
	imports = [
		./hardware-configuration.nix
		./system.nix
		./modules
	];
	
	system.stateVersion = "25.11";
}
