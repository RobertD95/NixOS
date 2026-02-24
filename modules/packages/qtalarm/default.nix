{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    qtalarm
  ];
}

