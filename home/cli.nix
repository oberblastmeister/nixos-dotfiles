{ config, pkgs, ... }:

{
  programs = {
    fzf = {
      enable = true;
      enableZshIntegration = true;
    };
    /* zsh = { */
    /*   sessionVariables = { */
    /*     EDITOR = "nvim"; */
    /*     VISUAL = "nvim"; */
    /*     TERMINAL = "alacritty"; */
    /*     BROWSER = "firefox"; */
    /*     PAGER = "less"; */
    /*     MANPAGER = "nvim +Man"; */
    /*   }; */
    /* }; */
  };

  xdg.configFile = {
    "starship.toml".source = ../files/.config/starship/starship.toml;
    "zsh".source = ../files/.config/zsh;
  };

  home.file = {
    ".zshenv".source = ../files/.zshenv;
  };

  home.packages = with pkgs; [
    bash

    bat

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

    unclutter

    starship

    glow

    haskellPackages.greenclip

    killall
  ];
}
