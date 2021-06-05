{ config, pkgs, ... }:

{
  imports = [
    ./cli.nix
    ./vscode.nix
  ];

  home.stateVersion = "21.05";
}
