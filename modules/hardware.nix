{ pkgs, inputs, ... }:
let
  nix = inputs.nix.legacyPackages.x86_64-linux;
  nyx = inputs.nyx.legacyPackages.x86_64-linux;
in
{
  # GPU
  hardware = {
    graphics = {
      enable = true;
      package = nix.mesa_git;
      enable32Bit = true;
      package32 = nix.mesa32_git;
    };
    amdgpu = {
      initrd.enable = true;
      opencl.enable = true;
    };
  };
  hardware.bluetooth.enable = true; # Bluetooth
}
