{ pkgs, lib, inputs, ... }:
let
  unstable = inputs.nixpkgs-unstable.legacyPackages.${pkgs.system};
in
{
  services.xserver = {
    enable = true;
  };
	programs = {
    hyprland = {
		  enable = true;
		  package = unstable.hyprland;
      withUWSM = false;
    };
  }; 
}
