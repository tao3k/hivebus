{ super, eachSystem }:
let
  renamerHiveExports = super.pops.hive.setNixosConfigurationsRenamer "asd";
in
{
  inherit (super.pops.hive.exports)
    nixosConfigurations
    darwinConfigurations
    colmenaHive
    homeConfigurations
    ;
  inherit (super) pops;

  renamerNixosConfigurations = renamerHiveExports.exports.nixosConfigurations;

  data = super.pops.data.exports.default;
  overlays = super.pops.eachSystem.packages.x86_64-linux.exports.overlays;

  nixosProfiles = super.pops.nixosProfiles.exports.default;
  nixosModules = super.pops.nixosModules.exports.default;
  hosts = super.pops.hosts.exports.default;
}
// super.eachSystem
