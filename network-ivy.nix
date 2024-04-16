{ config, pkgs, ... }:

{
	networking = {
		hostName = "aq-ivy";
		networkmanager.enable = true;
		firewall.enable = false;
	};
}
