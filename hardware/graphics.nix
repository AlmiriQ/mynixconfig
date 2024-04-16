{ config, pkgs, ... }:

{
	hardware.opengl.enable = true;
	hardware.opengl.driSupport = true;
	hardware.opengl.driSupport32Bit = true;
	services.displayManager.sddm.enable = true;
	services.displayManager.sddm.wayland.enable = true;
	services.desktopManager.plasma6.enable = true;
}
