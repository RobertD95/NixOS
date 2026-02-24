{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    nwg-look
  ];
}

