{ config, pkgs, ... }:

{
  programs = {
    bspwm = {
      enable = true;
    };
  };

  xdg.configFile = {
    "bspwm".source = ../files/.config/bspwm;
    "sxhkd".source = ../files/.config/sxhkd;
  };
}
