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
}
// super.eachSystem
