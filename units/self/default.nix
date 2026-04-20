# SPDX-FileCopyrightText: 2023 The omnibus Authors
# SPDX-FileCopyrightText: 2024 The omnibus Authors
#
# SPDX-License-Identifier: MIT

{ inputs, supportedSystems }:
let
  inherit (inputs.omnibus.inputs.flops.lib.haumea) removeTopDefault;
in
(inputs.omnibus.pops.load {
  src = ./.;
  transformer = [ removeTopDefault ];
  inputs = {
    inherit inputs supportedSystems;
    projectRoot = ../..;
  };
})
