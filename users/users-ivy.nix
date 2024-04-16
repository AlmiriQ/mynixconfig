{ config, pkgs, ... }:
let
	graphicalApps = with pkgs; [
		firefox
		telegram-desktop
		gimp
	];
	terminalApps = with pkgs; [
		htop
		btop
		git
	];
	languages = with pkgs; [
		python3
		python313
		lua
	];
in {
	users.users = {
		almiriqi = {
			isNormalUser = true;
			description = "Almiriq!Iwasaki";
			extraGroups = [ "wheel" "networkmanager" ];
		};
		maria = {
			isNormalUser = true;
			description = "Maria Arusu";
			extraGroups = [ "wheel" "remote" ];
			packages = with pkgs; []
			++ terminalApps
			++ languages;
		};
		root = { };
	};
}
