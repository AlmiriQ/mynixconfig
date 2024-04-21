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
	];

	aq.qore = "ivy";
	aq.portable = true;

	networking.hostName = "aq-omega";

	system.stateVersion = "24.05";
}
