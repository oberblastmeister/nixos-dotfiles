{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    alacritty
  ];

  xdg.configFile."alacritty".source = ../files/.config/alacritty;
}
