{ ... }:

{
	# Auto Update
	system.autoUpgrade = {
		enable = true;
		dates = "weekly";
	};

	# Auto Cleanup
	nix = {
		gc = { 
			automatic = true;
			dates = "daily";
			options = "--delete-older-than 3d";
		};
		settings = {
			auto-optimise-store = true;
		};
	};
}
