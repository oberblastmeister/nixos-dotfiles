{ config, pkgs, ... }:

{
  programs = {
    git = {
      enable = true;
      userName = "Brian Shu";
      userEmail = "littlebubu.shu@gmail.com";
      delta = {
        enable = true;
      };
    };
    gh = {
      enable = true;
    };
  };
}
