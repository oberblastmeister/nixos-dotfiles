{ config, pkgs, ... }:

{
  programs = {
    fzf = {
      enable = true;
      enableZshIntegration = true;
    };
  };

  home.packages = with pkgs; [
    bat
    fd
  ];
}
