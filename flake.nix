{
  description = "Mickhats dotfiles";

  inputs = {
    # NixOS official package source, using the nixos unstable branch here
     nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable"
     nvf.url = "github:notashelf/nvf";
     nvf.inputs.nixpkgs.follows = "nixpkgs";
     stylix.url = "github:danth/stylix";
     home-manager.url = "github:nix-community/home-manager";
     home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, nvf, ... }@inputs: {
    # Please replace my-nixos with your hostname
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
         inputs.stylix.nixosModules.stylix
          home-manager.nixosModules.home-manager
          nvf.nixosModules.default
        # Import the previous configuration.nix we used,
        # so the old configuration file still takes effect
        ./configuration.nix
        {
            home-manager.useUserPackages = false;
            home-manager.users.mickhat = import ./home.nix;
            home-manager.extraSpecialArgs = { inherit inputs; };
            home-manager.backupFileExtension = "backup";
          }
      ];
    };
  };
}