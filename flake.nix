{
  description = "loser flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs =
    inputs@{
      nixpkgs,
      home-manager,
      hyprland,
      ...
    }:
    {
      homeConfigurations.loser = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./nixos/configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.ezhang = import ./home/home.nix;
            home-manager.extraSpecialArgs = inputs;
          }
        ];
      };
    };
}
