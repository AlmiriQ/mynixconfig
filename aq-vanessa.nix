{ config, pkgs, ... }:

{
	imports = [
		./hardware-configuration.nix
		./users-vanessa.nix
		./bootloader.nix
		./audio.nix
		./graphics.nix
		./network-vanessa.nix
		./locale.nix
	];

	nixpkgs.config.allowUnfree = true;
	
	fonts.packages = with pkgs; [
		noto-fonts
		noto-fonts-cjk
		noto-fonts-emoji
		liberation_ttf
		fira-code
		fira-code-symbols
		mplus-outline-fonts.githubRelease
		dina-font
		proggyfonts
	];

	environment.systemPackages = with pkgs; [];

	system.stateVersion = "23.11";
	
	nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
