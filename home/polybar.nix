{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    polybarFull
  ];

  xdg.configFile."polybar".source = ../files/.config/polybar;
}