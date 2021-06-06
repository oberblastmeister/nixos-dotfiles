{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    alacritty
  ];

  xdg.configFile."alacritty/alacritty.yml".source = ../files/.config/alacritty/alacritty.yml;
}
