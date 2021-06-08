{ config, pkgs, ... }:

{
  programs = {
    fzf = {
      enable = true;
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
    gawk
    gnused
    gnupg

    bat
    vivid
    fd
    nodePackages.insect
    # lf file manager
    lf
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
    archiver
    sd
    tree
    tmux
    unzip
    rsync
    xsv

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
