{ config, pkgs, ... }:

{
	users.users = {
		almiriqi = {
			isNormalUser = true;
			description = "Almiriq!Iwasaki";
			extraGroups = [ "wheel" ];
			initialPassword = "iqirimla";
		};
		maria = {
			isNormalUser = true;
			description = "Maria Arusu";
			extraGroups = [ "wheel" "remote" ];
			initialPassword = "airam";
		};
		root = {
			initialPassword = "toor";
		};
	};
}
