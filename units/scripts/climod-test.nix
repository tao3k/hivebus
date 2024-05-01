# SPDX-FileCopyrightText: 2024 The omnibus Authors
#
# SPDX-License-Identifier: MIT

climod {
  name = "demo";
  description = "Demo CLI generated";
  action.bash = ''
    echo Hello, world
  '';
  target.bash.prelude = ''
    echo "This is a prelude"
  '';
  allowExtraArguments = true;
  subcommands.tasks.description = "Print args";
  subcommands.tasks.allowExtraArguments = true;
  subcommands.tasks.action.bash = ''
    echo Hello
  '';
}
