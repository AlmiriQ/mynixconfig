{ config, pkgs, ... }:

{
	networking = if (config.aq.portable) then {
		networkmanager.enable = true;
		firewall.enable = false;
	} else {
		networkmanager.enable = false;
		firewall.enable = false;
		interfaces = {
			eno1 = {
				ipv4.addresses = [{
					address = "192.168.0.2";
					prefixLength = 24;
				}];
			};
		};
		defaultGateway  = "192.168.0.1";
		nameservers  = [ "8.8.8.8" "8.8.4.4" ];
	};
}