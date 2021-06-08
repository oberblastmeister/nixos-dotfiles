{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    gnome.networkmanagerapplet
    lxappearance

    # viewers
    feh # background setter and image viewer
    sxiv # image
    zathura # pdf
    mpv # video

    # gui file manager
    gnome.nautilus

    # gifs
    peek

    xfce.xfce4-power-manager

    arandr

    # chat
    discord
    element-desktop

    system-config-printer
    
    betterlockscreen

    jgmenu
  ];

  programs = {
    firefox = {
      enable = true;
    };
  };

  services = {
    flameshot.enable = true;

    syncthing = {
      enable = true;
    };

    /* dunst = { */
    /*   enable = true; */
    /* }; */

    redshift = {
      enable = true;
      provider = "geoclue2";
    };

    /* picom = { */
    /*   enable = true; */
    /* }; */
  };

  xdg.configFile = {
    "dunst".source = ../files/.config/dunst;
    "picom".source = ../files/.config/picom;
  };
}
