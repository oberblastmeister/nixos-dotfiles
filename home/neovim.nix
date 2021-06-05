{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    neovim-nightly
    rnix-lsp
    rust-analyzer
    gopls
    nodePackages.pyright
    nodePackages.typescript-language-server
    nodePackages.vscode-html-languageserver-bin
    nodePackages.vscode-css-languageserver-bin
    nodePackages.vscode-json-languageserver-bin
    haskell-language-server
    sumneko-lua-language-server
  ];
}
