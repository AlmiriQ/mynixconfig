{ config, pkgs, ... }:

{
	home.username = "maria";
	home.homeDirectory = "/home/maria";

	home.stateVersion = "24.05";

	nixpkgs.config.allowUnfree = true;
	nixpkgs.config.permittedInsecurePackages = [ ];

	home.packages = (import ./packages.nix) pkgs;

	home.sessionVariables = { };
	
	programs.home-manager.enable = true;
}
