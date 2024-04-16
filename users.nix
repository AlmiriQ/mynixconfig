{ config, pkgs, ... }:

{
	users.users = {
		almiriqi = {
			isNormalUser = true;
			description = "Almiriq!Iwasaki";
			extraGroups = [ "wheel" ];
		};
		maria = {
			isNormalUser = true;
			description = "Maria Arusu";
			extraGroups = [ "wheel" "remote" ];
		};
		root = { };
	};
}
