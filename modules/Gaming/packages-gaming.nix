{ pkgs, ... }:
let
  gaming-launchers = [
    pkgs.heroic
    pkgs.lutris
    pkgs.retroarch
    pkgs.r2modman
  ];
  specific-launchers = [
    pkgs.xivlauncher
    pkgs.prismlauncher
  ];
  game-extra = [
    pkgs.appimage-run
    pkgs.lsfg-vk
    pkgs.mangohud
    pkgs.protonup-qt
  ];
in
{
  environment.systemPackages = gaming-launchers ++ specific-launchers ++ game-extra;
}
