{ config, pkgs, lib, ... }:

{
	options = {
		aq.qore = lib.mkOption {
			type = lib.types.str;
			default = "";
		};
		aq.portable = lib.mkOption {
			type = lib.types.bool;
			default = true;
		};
	};
}
