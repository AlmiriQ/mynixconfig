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
		./../ssh.nix
	];

	aq.qore = "vanessa";
	aq.portable = false;

	system.stateVersion = "24.05";
}
