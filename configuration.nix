{ config, pkgs, ... }:
{
  imports = [ ./hardware-configuration.nix ./modules/imports.nix ];
system.stateVersion = "25.11";
}
