{
  description = "TODO: fill me in";
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils }:
    (flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        nats_cli = pkgs.callPackage ./derivation.nix {};
      in {
        packages = {
          default = nats_cli;
          inherit nats_cli;
        };
        checks = {
          test = pkgs.runCommandNoCC "nats_cli-test" {} ''
            mkdir -p $out
            : ${nats_cli}
          '';
        };
    })) // {
      overlays.default = final: prev: {
        nats_cli = prev.callPackage ./derivation.nix {};
      };
    };
}
