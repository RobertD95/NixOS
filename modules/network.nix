{ ... }:
{
	networking = {
		enableIPv6 = false;
		firewall = {
			enable = true;
			allowedTCPPorts = [ 
                          5520 #Hytale
                        ];  
			allowedUDPPorts = [
                          5520 #Hytale 
                        ];
		};
    nftables = {
      enable = true;
    };
	};
}
