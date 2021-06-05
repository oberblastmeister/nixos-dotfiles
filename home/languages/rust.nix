{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    rustup
    cargo-edit
    cargo-expand
    cargo-watch
    cargo-cross
  ];
}
