_: {
  imports = [
    # Main Settings
    ./settings.nix
    ./keymaps.nix

    # LSP
    ./plugins/lsp/lsp.nix
    ./plugins/lsp/fidget.nix

    # Cmp
    ./plugins/cmp/cmp.nix
    ./plugins/cmp/autopairs.nix
    ./plugins/cmp/schemastore.nix

    # Editor
    ./plugins/editor/oil.nix
    ./plugins/editor/navic.nix
    ./plugins/editor/treesitter.nix
    ./plugins/editor/indent-blankline.nix

    # Git
    ./plugins/git/lazygit.nix

    # Utils
    ./plugins/utils/web-devicons.nix
    ./plugins/utils/telescope.nix
    ./plugins/utils/whichkey.nix
  ];
}
