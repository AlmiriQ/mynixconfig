{ config, pkgs, ... }:

{
	networking = {
		hostName = "aqivy";
		networkmanager.enable = true;
		firewall.enable = false;
	};
}
