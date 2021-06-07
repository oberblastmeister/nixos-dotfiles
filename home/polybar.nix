{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    polybarFull
    font-awesome
  ];

  xdg.configFile."polybar".source = ../files/.config/polybar;
}
