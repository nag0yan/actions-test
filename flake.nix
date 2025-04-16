{
  description = "Github Actions Playground";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
  flake-utils.lib.eachDefaultSystem(
    system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      packages.default = pkgs.mkShell {
        packages = with pkgs; [
          act
          actionlint
          gitleaks
          gh
          yamlfmt
          go-task
        ];
      };
    }
  );
}
