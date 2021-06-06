{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
  };

  xdg.configFile."alacritty".source = ../files/.config/alacritty/alacritty.yml;
}
