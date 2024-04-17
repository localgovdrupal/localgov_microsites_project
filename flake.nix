{
  description = "A Nix flake for localgov_microsites_project.";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

      inherit (pkgs) ddev mkcert mkShell nixfmt-classic;
    in {
      devShells.${system}.default = mkShell { packages = [ ddev mkcert ]; };

      formatter.${system} = nixfmt-classic;
    };
}
