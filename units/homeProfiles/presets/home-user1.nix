# SPDX-FileCopyrightText: 2023 The omnibus Authors
# SPDX-FileCopyrightText: 2024 The omnibus Authors
#
# SPDX-License-Identifier: MIT

{
  home = {
    username = "your-username";
    homeDirectory = "/home/your-username";
  };
  systemd.user.startServices = "sd-switch";
  home.stateVersion = "23.05";
}
