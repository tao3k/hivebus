{ super, eachSystem }:
{
  inherit (super.pops.hive.exports)
    nixosConfigurations
    darwinConfigurations
    colmenaHive
    homeConfiguraitons
    ;
  inherit (super) pops;

  data = super.pops.data.exports.default;
  overlays = super.pops.eachSystem.packages.x86_64-linux.exports.overlays;
}
// super.eachSystem
