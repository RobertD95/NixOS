{ pkgs, ... }:
let
	nix = inputs.nix.legacyPackages.x86_64-linux;
	nyx = inputs.nyx.legacyPackages.x86_64-linux;
in
{
  environment.systemPackages = [
    pkgs.libdrm_git
    pkgs.libdrm32_git
  ];
}