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
	];

	aq.qore = "ivy";
	aq.portable = true;

	networking = {
		networkmanager.enable = true;
		firewall.enable = false;
	};

	environment.systemPackages = with pkgs; [];

	system.stateVersion = "23.11";
}