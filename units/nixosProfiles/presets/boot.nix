# SPDX-FileCopyrightText: 2023 The omnibus Authors
# SPDX-FileCopyrightText: 2024 The omnibus Authors
#
# SPDX-License-Identifier: MIT
{ inputs, data }:
{
  imports = [ inputs.self.nixosModules.boot ];
  boot.__profiles__.test = "nixosProfiles.boot";
  environment.etc."toplevelArgs".text = data.env.nixos.profile;
  environment.etc."inputsArgs".text = inputs.data.env.nixos.maintainer;
}
