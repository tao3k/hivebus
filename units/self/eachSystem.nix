{
  eachSystem,
  super,
  inputs,
  lib,
}:
lib.mapAttrs (_: v: eachSystem v) {
  scripts = system: super.pops.eachSystem.scripts.${system}.exports.default;
  packages = system: super.pops.eachSystem.packages.${system}.exports.packages;
  data = system: super.pops.eachSystem.data.${system}.exports.default;
}
