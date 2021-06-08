{ config, pkgs, ... }:

{
  home.packages = with pkgs.xorg; [
    xset
    xsetroot
    xkill
    xrdb
    setxkbmap
    xrandr
    xinput
  ];
}
