{ config, pkgs, ... }:

{
	imports = [
		./options.nix
		./default.nix
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

	environment.systemPackages = with pkgs; [];

	system.stateVersion = "23.11";
}