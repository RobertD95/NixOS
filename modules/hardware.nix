{ pkgs, inputs, ... }:
let
  hypr = inputs.hyprland.packages.x86_64-linux;
  nix = inputs.nix.legacyPackages.x86_64-linux;
  nyx = inputs.nyx.legacyPackages.x86_64-linux;
in
{
  # GPU
  hardware = {
    graphics = {
      enable = true;
#package = nyx.mesa_git;
      package = hypr.mesa;
      enable32Bit = true;
#package32 = nyx.mesa32_git;
      package32 = hypr.mesa;
    };
    amdgpu = {
      initrd.enable = true;
      opencl.enable = true;
    };
  };
  hardware.bluetooth.enable = true; # Bluetooth
}
