{ config, pkgs, ... }:

{
  imports = [
    ./cli.nix
  ];

  home.stateVersion = "21.05";
}
