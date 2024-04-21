{
	description = "Almiriq!Iwasaki's Flake!";

	inputs = {
		nixpkgs.url = "nixpkgs/nixos-unstable";
		nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-23.11";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { self, nixpkgs, nixpkgs-stable, home-manager, ... }:
	let
		lib = nixpkgs.lib;
		linux64 = "x86_64-linux";
	in {
		nixosConfigurations = {
			defaut = { # any new device
				system = linux64;
				modules = [
					./nixos/device/defaut.nix
				];
			};
			vanessa = lib.nixosSystem { # my pc
				system = linux64;
				modules = [
					./nixos/device/vanessa.nix
				];
			};
			ivy = lib.nixosSystem { # my laptop
				system = linux64;
				modules = [
					./nixos/device/ivy.nix
				];
			};
		};

		# my personal account
		homeConfigurations.almiriqi = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.${linux64};
			modules = [ ./home-manager/almiriqi/home.nix ];
		};

		# maria's account
		homeConfigurations.maria = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.${linux64};
			modules = [ ./home-manager/maria/home.nix ];
		};
	};
}