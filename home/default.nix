{ config, pkgs, ... }:

{
  imports = [
    ./languages
    ./cli.nix
    ./vscode.nix
    ./neovim.nix
  ];

  home.packages = with pkgs; [
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
