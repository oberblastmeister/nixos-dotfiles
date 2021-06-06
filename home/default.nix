{ config, pkgs, ... }:

{
  imports = [
    ./languages
    ./cli.nix
    ./vscode.nix
    ./neovim.nix
    ./git.nix
    ./gui.nix
    ./alacritty.nix
    # nix-doom-emacs.hmModule
  ];

  /* programs.doom-emacs = { */
  /*   enable = true; */
  /* }; */

  home.packages = with pkgs; [
    (nerdfonts.override {
      fonts = [
        "FiraCode"
        "Iosevka"
        "VictorMono"
      ];
    })
  ];

  home.sesionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    TERMINAL = "alacritty";
    BROWSER = "firefox";
    PAGER = "less";
    MANPAGER = "nvim +Man";
  };

  home.stateVersion = "21.05";
}
