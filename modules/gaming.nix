{ pkgs, ... }:

{

	programs = {
		steam = {
			enable = true;
		};
		java = {
			enable = true;
			package = pkgs.javaPackages.compiler.temurin-bin.jdk-25;
		};
	};

	environment.systemPackages = [
		pkgs.lutris
		pkgs.retroarch
		pkgs.bottles
		pkgs.heroic
		# Game Specific Launchers
		pkgs.xivlauncher
		pkgs.prismlauncher
		# Extra
		pkgs.mangohud
		pkgs.lsfg-vk
	];
}
