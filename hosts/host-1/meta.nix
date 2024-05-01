# SPDX-FileCopyrightText: 2024 The omnibus Authors
#
# SPDX-License-Identifier: MIT
{
  nixos-unstable,
  lib,
  self,
  inputs,
}:
{
  colmena = {
    nixpkgs = { };
  };
  system = "x86_64-linux";
  nixosConfiguration = {
    bee.pkgs = import nixos-unstable { system = self.system; };
    bee.system = self.system;
    bee.home = inputs.omnibus.flake.inputs.home-manager;
    imports = [ inputs.omnibus.flake.inputs.disko.nixosModules.default ];
  };
  asd = self.nixosConfiguration;
  colmenaConfiguration = {
    deployment = {
      allowLocalDeployment = true;
      targetHost = "127.0.0.1";
    };
    inherit (self.nixosConfiguration) bee imports;
  };
}
