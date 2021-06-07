{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    sxhkd
  ];

  xdg.configFile = {
    "bspwm".source = ../files/.config/bspwm;
    "sxhkd".source = ../files/.config/sxhkd;
  };
}
