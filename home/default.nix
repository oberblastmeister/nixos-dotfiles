{ config, pkgs, ... }:

{
  imports = [
    ./languages
    ./cli.nix
    ./vscode.nix
    ./neovim.nix
    ./git.nix
    ./gui.nix
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

  home.stateVersion = "21.05";

  home.activation.stow = config.lib.dag.entryAfter [ "writeBoundary" ] ''
    cd /etc/nixos
    stow --target=$HOME stowed
  '';
}
