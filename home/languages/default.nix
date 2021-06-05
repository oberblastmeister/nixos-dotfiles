{ config, pkgs, ... }:

{
  imports = [
    ./rust.nix
    ./haskell.nix
    ./ocaml.nix
  ];
}
