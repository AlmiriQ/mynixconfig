{ config, pkgs, ... }:

{
	nix.settings.experimental-features = [ "nix-command" "flakes" ];
	nixpkgs.config.allowUnfree = true;
	networking.hostName = "aq-${config.aq.qore}";
	
	environment.systemPackages = with pkgs; [
		firefox
	];
}
