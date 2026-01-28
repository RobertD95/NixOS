{ pkgs, inputs, ... }:
{
	imports =
	[
	./desktop-environments.nix
	./fonts.nix
	./hyprland.nix
	./gaming.nix
	./network.nix
	./programs.nix
	./settings.nix
	./updates.nix
	];
}
