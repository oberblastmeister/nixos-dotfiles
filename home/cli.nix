{ config, pkgs, ... }:

{
  programs = {
    fzf = {
      enable = true;
      enableZshIntegration = true;
    };
  };

  home.packages = with pkgs; [
    bat
    bat-extras

    fd
    lf # lf file manager
    neofetch
    onefetch
    direnv

    exa # ls
    du-dust
    ripgrep # better grep, needed for fzf
    ripgrep-all
    broot
    bottom
    zoxide
    pandoc # convert different files
    translate-shell
    speedtest-cli
    cht-sh

    micro # editor

    xclip
    tmux
    udiskie
  ];
}
