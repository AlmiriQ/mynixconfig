{ config, pkgs, ... }:

{
	boot.loader = {
		efi = {
			canTouchEfiVariables = true;
			efiSysMountPoint = "/boot/efi";
		};
		grub = {
			efiSupport = true;
			device = "nodev";
			configurationLimit = 10;
			gfxmodeEfi = "1920x1080";
			useOSProber = true;
			extraEntries = ''
				menuentry "UEFI Firmware Setup" {
					fwsetup
				}
			'';
		};
	};
}
