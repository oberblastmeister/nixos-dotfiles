{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    rustup
    cargo-edit
    cargo-expand
    cargo-watch
    cargo-cross
    cargo-tarpaulin
    cargo-flamegraph
    cargo-update
  ];
}
