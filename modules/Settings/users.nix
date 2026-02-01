{ ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
	users.users.robby = {
		isNormalUser = true;
		description = "robby";
		extraGroups = [ "networkmanager" "wheel" ];
	};
}
