# SPDX-FileCopyrightText: 2023 The omnibus Authors
# SPDX-FileCopyrightText: 2024 The omnibus Authors
#
# SPDX-License-Identifier: MIT

{
  inputs = {
    omnibus.url = "github:gtrunsec/omnibus";
    nixos-unstable.url = "github:nixos/nixpkgs/nixos-unstable-small";
    home-manager.url = "github:nix-community/home-manager";
  };

  outputs =
    inputs:
    let
      lib = inputs.omnibus.inputs.flops.popflow.nixlib;
      supportedSystems = lib.genAttrs [
        "x86_64-linux"
        "x86_64-darwin"
        "aarch64-linux"
        "aarch64-darwin"
      ];
      pops.hivebus = import ./units/self { inherit inputs supportedSystems; };
      hivebus = pops.hivebus.exports.default;
    in
    lib.recursiveUpdate { inherit pops; } hivebus.flakeOutputs;
}
