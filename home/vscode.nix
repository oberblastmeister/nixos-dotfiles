{ config, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      bbenoist.Nix
      matklad.rust-analyzer
      haskell.haskell
      ms-python.python
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    ];
  };
}
