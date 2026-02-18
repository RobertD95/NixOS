{ ... }:
{
  networking = {
  hostName = "Tea";
  firewall = {
    enable = true;
    allowedTCPPorts = [];
    allowedUDPPorts = [ 5520 ];
  };

  proxy.noProxy = "10.0.0.70, localhost, internal.domain";
  networkmanager.enable = true;
  };
}