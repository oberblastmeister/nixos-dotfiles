{ config, pkgs, ... }:

let
  extensions = (with pkgs.vscode-extensions; [
    bbenoist.Nix
    matklad.rust-analyzer
    haskell.haskell
    ms-python.python
  ]) ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
  ];
in
{
  home.packages = with pkgs; [
    vscode-with-extensions.override
    {
      vscodeExtensions = extensions;
    }
  ];
}
