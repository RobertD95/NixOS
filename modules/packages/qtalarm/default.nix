{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.qtalarm
  ];
}