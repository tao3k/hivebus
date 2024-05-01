{
  eachSystem,
  super,
  inputs,
  lib,
}:
lib.mapAttrs (_: v: eachSystem v) {
  scripts =
    system:
    (super.scripts.addLoadExtender {
      load.inputs = {
        inputs = {
          nixpkgs = inputs.nixos-unstable.legacyPackages.${system};
        };
      };
    });

  packages =
    system:
    (super.packages.addLoadExtender {
      load.inputs = {
        inputs = {
          nixpkgs = inputs.nixos-unstable.legacyPackages.${system};
        };
      };
    });

  data =
    system:
    (super.data.addLoadExtender {
      load.inputs = {
        nixpkgs = inputs.nixos-unstable.legacyPackages.${system};
        inputs = {
          nixpkgs = inputs.nixos-unstable.legacyPackages.${system};
        };
      };
    });
}
