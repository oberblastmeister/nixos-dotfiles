{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    package = pkgs.neovim-nightly;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    withNodeJs = true;
    withPython3 = true;
  };

  home.packages = with pkgs; [
    neovim-remote

    rnix-lsp
    rust-analyzer
    gopls
    nodePackages.pyright
    haskell-language-server
    sumneko-lua-language-server

    nodePackages.typescript-language-server
    nodePackages.vscode-html-languageserver-bin
    nodePackages.vscode-css-languageserver-bin
    nodePackages.vscode-json-languageserver-bin
    nodePackages.yaml-language-server
    nodePackages.vim-language-server
    nodePackages.bash-language-server

    texlab
    clojure-lsp
    dhall-lsp-server

    ocamlPackages.ocaml-lsp
    ocamlformat

    shellcheck
  ];

  xdg.configFile."nvim".source = ../files/.config/nvim;
}
