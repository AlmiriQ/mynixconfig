{ config, pkgs, ... }:

{
	home.username = "almiriqi";
	home.homeDirectory = "/home/almiriqi";

	home.stateVersion = "24.05";

	nixpkgs.config.allowUnfree = true;
	nixpkgs.config.permittedInsecurePackages = [
		"openssl-1.1.1w"
	];

	home.packages = (import ./packages.nix) pkgs;
	# home.file = { };

	home.sessionVariables = {
	};
	
	programs.home-manager.enable = true;

	programs.git = {
		enable = true;
		userName  = "AlmiriQ";
		userEmail = "al.quali.4ef@gmail.com";
	};
}
