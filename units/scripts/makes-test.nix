# SPDX-FileCopyrightText: 2024 The omnibus Authors
#
# SPDX-License-Identifier: MIT

makeScript {
  name = "runScriptWithEnv";
  searchPaths.bin = [ nixpkgs.hello ];
  searchPaths.source = [ ];
  entrypoint = ''
    hello --help
  '';
}
