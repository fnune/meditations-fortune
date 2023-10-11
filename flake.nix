rec {
  description = "Builds and installs a fortune database file using Marcus Aurelius's Meditations";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        packages.meditations-fortune = import ./default.nix {
          inherit pkgs;
          inherit description;
        };
        defaultPackage = self.packages.${system}.meditations-fortune;
      }
    );
}
