{ config, pkgs, ... }:

{
	nixpkgs.config.allowUnfree = true;
	networking.hostName = "aq-${aq.qore}";
}