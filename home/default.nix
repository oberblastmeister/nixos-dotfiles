{ config, pkgs, ... }:

{
  imports = [
    ./cli.nix
  ];

  home.stateVersion = config.system.stateVersion;
}
