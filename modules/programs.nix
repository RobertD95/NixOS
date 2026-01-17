{ config, pkgs, ...}:

{

	# NeoVim Install and Default
	programs.neovim.enable = true;
	programs.neovim.defaultEditor = true;
    hardware.bluetooth.enable = true;

    services.flatpak.enable = true;

    programs.appimage = {
        enable = true;
        binfmt = true;
    };

	environment.systemPackages = with pkgs; [
		pkgs.alacritty
        pkgs.appimage-run
		pkgs.bluetui
		pkgs.discord
        pkgs.flatpak
        pkgs.github-desktop
		pkgs.gnome-disk-utility
		pkgs.kdePackages.kdenlive
		pkgs.librewolf
		pkgs.nwg-look
		pkgs.obs-studio
		pkgs.obsidian
		pkgs.pavucontrol
		pkgs.protonup-qt
		pkgs.qjackctl
		pkgs.swaynotificationcenter
		pkgs.telegram-desktop
        pkgs.pkgs.ungoogled-chromium
        pkgs.waybar
	];
}
