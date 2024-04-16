{ config, pkgs, ... }:

{
	nixpkgs.config.allowUnfree = true;
	networking.hostName = "aq-${config.aq.qore}";
}