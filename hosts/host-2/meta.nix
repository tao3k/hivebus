# SPDX-FileCopyrightText: 2024 The omnibus Authors
#
# SPDX-License-Identifier: MIT
{
  self,
  omnibus,
  nixos-unstable,
}:
{
  system = "aarch64-darwin";
  darwinConfiguration = {
    bee.darwin = omnibus.flake.inputs.darwin;
    bee.system = self.system;
    bee.pkgs = import nixos-unstable { system = self.system; };
  };
}
