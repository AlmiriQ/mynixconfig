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

	nixpkgs.config.allowUnfree = true;
	networking.hostName = "aq-${config.aq.qore}";
}
