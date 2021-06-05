{ config, pkgs, ... }:

{
  imports = [
    ./languages
    ./cli.nix
    ./vscode.nix
  ];

  fonts.fonts = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    (nerdfonts.override {
      fonts = [
        FiraCode
        Iosevka
        VictorMono
      ];
    })
  ];

  home.stateVersion = "21.05";
}
