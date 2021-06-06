{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
  };

  xdg.configFile."alacritty/alacritty.yml".source = ../files/.config/alacritty/alacritty.yml;
}
