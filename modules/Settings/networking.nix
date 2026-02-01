{ ... }:
{
  networking = {
    hostName = "Tea";
    enableIPv6 = false;
    networkmanager.enable = true;
      #proxy = {
      #  default = "http://user:password@proxy:port/";
      #  noProxy = "10.0.0.70, localhost, internal.domain";
      #};
    };
}
