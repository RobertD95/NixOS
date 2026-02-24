{ pkgs, inputs, ... }:
let
  nix = inputs.nix.legacyPackages.x86_64-linux;
  nyx = inputs.nyx.legacyPackages.x86_64-linux;
in
{
  environment.systemPackages = [
    nyx.libdrm_git
    nyx.libdrm32_git
  ];
}

