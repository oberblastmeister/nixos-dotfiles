{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    stack
    cabal-install
    ghc
  ];
}
