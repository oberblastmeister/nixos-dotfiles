{ config, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      sainnhe.gruvbox-material
      asvetliakov.vscode-neovim
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    ];
  };
}
