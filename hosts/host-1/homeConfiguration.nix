{ super }:
{
  inherit (super.meta.nixosConfiguration) bee;
  imports = [
    {
      home.stateVersion = "24.05";
      home.username = "hivebus";
      home.homeDirectory = "/home/nixos/hivebus";
    }
  ];
}
