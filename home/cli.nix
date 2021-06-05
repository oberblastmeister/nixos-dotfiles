{ config, pkgs }:

{
  home.packages = with pkgs; [
    bat
    fd
    fzf
  ];
}
