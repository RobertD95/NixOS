{ ... }:
{
  networking = {
		firewall = {
			enable = true;
			allowedTCPPorts = [ 
                          #Other
                        ];  
			allowedUDPPorts = [
                          5520 #Hytale 
                        ];
		};
	};

}
