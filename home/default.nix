{ config, pkgs, ... }:

{
  imports = [
    ./languages
    ./cli.nix
    ./vscode.nix
  ];

  home.stateVersion = "21.05";
}
