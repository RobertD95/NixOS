{ config, pkgs, ... }:
{
	networking= {
		enableIPv6 = false;
		firewall = {
			enable = true;
			allowedTCPPorts = [ 5520 ];  
			allowedUDPPorts = [ 5520 ];
		};
	};
}
