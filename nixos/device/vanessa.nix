{ config, pkgs, ... }:

{
	imports = [
		./options.nix
		./any.nix
		./../hardware-configuration.nix
		./../users.nix
		./../network.nix
		./../bootloader.nix
		./../hardware/audio.nix
		./../hardware/graphics.nix
		./../locale.nix
		./../ssh.nix
	];

	aq.qore = "vanessa";
	aq.portable = false;

	networking.hostName = "aq-alpha";

	services.flatpak.enable = true;

	system.stateVersion = "24.05";
	
	programs.steam.enable = true;
}
