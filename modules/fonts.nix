{ config, pkgs, ... }:

{
	fonts.packages = with pkgs; [
		pkgs.font-awesome
		pkgs.nerd-fonts.jetbrains-mono
		pkgs.nerd-fonts.noto
		pkgs.nerd-fonts.fira-code
		pkgs.nerd-fonts.hack
	];
}
