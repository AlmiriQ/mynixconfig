{
	description = "Almiriq!Iwasaki's Flake!";

	inputs = {
		nixpkgs.url = "nixpkgs/nixos-unstable";
	};

	outputs = {self, nixpkgs, ... }:
	let
		lib = nixpkgs.lib;
	in {
		nixosConfigurations = {
			aq-vanessa = lib.nixosSystem {
				system = "x86_64-linux";
				modules = [
					./device/vanessa.nix
				];
			};
			aq-ivy = lib.nixosSystem {
				system = "x86_64-linux";
				modules = [
					./device/ivy.nix
				];
			};
		};
	};
}
