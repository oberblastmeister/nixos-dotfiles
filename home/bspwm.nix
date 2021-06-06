{ config, pkgs, ... }:

{
  xdg.configFile = {
    "bspwm".source = ../files/.config/bspwm;
    "sxhkd".source = ../files/.config/sxhkd;
  };
}
