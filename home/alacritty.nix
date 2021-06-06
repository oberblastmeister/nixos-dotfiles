{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
  };

  xdg.configFile."nvim".source = ../files/.config/alacritty/alacritty.yml;
}
