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
    ./bspwm.nix
    ./rofi.nix
    ./polybar.nix
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

  /* home.sessionVariables = { */
  /*   EDITOR = "nvim"; */
  /*   VISUAL = "nvim"; */
  /*   TERMINAL = "alacritty"; */
  /*   BROWSER = "firefox"; */
  /*   PAGER = "less"; */
  /*   MANPAGER = "nvim +Man"; */
  /* }; */

  home.sessionPath = [
    "$HOME/.cargo/bin"
    "${config.xdg.dataHome}/bin"
    "./node_modules/.bin"
  ];

  home.stateVersion = "21.05";
}
