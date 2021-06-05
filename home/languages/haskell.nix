{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    stack
    cabal-install
    haskell-language-server
    ghc
  ];
}
