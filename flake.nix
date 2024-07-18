{
  description = "njetmolotoff NixOS Configuration";
  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-stable";
    
  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: {
    let
      system = "aarch64-linux"
     in {
     	nixosConfigurations.njetmolotoff = nixpkgs.lib.nixosSystem {
     		inherit system;
     		modules = [./configuration ./host/configuration.nix]
     	}
     }
    #formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.alejandra;
  };
}
