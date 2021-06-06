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

    polybarFull

    arandr

    # chat
    discord
    element-desktop

    rofi
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

    dunst = {
      enable = true;
    };

    redshift = {
      enable = true;
      provider = "geoclue2";
    };

    picom = {
      enable = true;
    };
  };
}
