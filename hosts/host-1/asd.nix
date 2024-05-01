{ super }:
{
  inherit (super.meta.nixosConfiguration) bee;
  imports = super.meta.nixosConfiguration.imports ++ [
    { networking.hostName = "renamedHiveNixOS"; }
  ];
}
