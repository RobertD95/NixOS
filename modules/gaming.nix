{ pkgs, ... }:

{

	programs.steam = {
		enable = true;
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
