{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    ocaml
    dune_2
    opam
  ];
}
