{ pkgs, inputs, ... }:
let
  nyx = inputs.nyx.legacyPackages.x86_64-linux;
in
{
  environment.systemPackages = with nyx; [
    libdrm_git
    libdrm32_git
  ];
}

