{ config, pkgs, ... }:

{
	imports = [
		./options.nix
		./default.nix
		./../hardware-configuration.nix
		./../users.nix
		./../bootloader.nix
		./../hardware/audio.nix
		./../hardware/graphics.nix
		./../locale.nix
		./../ssh.nix
	];

	aq.qore = "vanessa";
	aq.portable = false;

	networking = {
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

	environment.systemPackages = with pkgs; [];

	system.stateVersion = "23.11";
}