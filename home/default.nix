{ config, pkgs, ... }:

{
  imports = [
    ./languages
    ./cli.nix
    ./vscode.nix
  ];

  home.packages = [
    (nerdfonts.override {
      fonts = [
        "FiraCode"
        "Iosevka"
        "VictorMono"
      ];
    })
  ];

  home.stateVersion = "21.05";
}
