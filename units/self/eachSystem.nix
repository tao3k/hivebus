{
  supportedSystems,
  super,
  inputs,
  lib,
}:
lib.mapAttrs (_: v: supportedSystems v) {
  scripts = system: super.pops.supportedSystems.scripts.${system}.exports.default;
  apps = system: super.pops.supportedSystems.scripts.${system}.exports.apps;
  data = system: super.pops.supportedSystems.data.${system}.exports.default;
  packages =
    system:
    super.pops.supportedSystems.packages.${system}.exports.derivations
    // {
    };
}
