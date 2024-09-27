{
  description = "loser flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixCats.url = "github:BirdeeHub/nixCats-nvim?dir=nix";
  };

  outputs =
    inputs@{
      nixpkgs,
      home-manager,
      nixCats,
      ...
    }:
    {
      nixosConfigurations.loser = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./nixos/configuration.nix
          ./hibernate.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.ezhang = import ./home/home.nix;
            home-manager.extraSpecialArgs = inputs;
          }
          nixCats
        ];
      };
    };
}
