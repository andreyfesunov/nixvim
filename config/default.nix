_: {
  imports = [
    # Main Settings
    ./settings.nix
    ./keymaps.nix

    # LSP
    ./plugins/lsp/lsp.nix
    ./plugins/lsp/fidget.nix
    ./plugins/lsp/conform.nix

    # Cmp
    ./plugins/cmp/cmp.nix
    ./plugins/cmp/autopairs.nix
    ./plugins/cmp/schemastore.nix

    # Editor
    ./plugins/editor/oil.nix
    ./plugins/editor/treesitter.nix
    ./plugins/editor/indent-blankline.nix
    ./plugins/editor/lualine.nix
    ./plugins/editor/startify.nix
    ./plugins/editor/fzf-lua.nix
    ./plugins/editor/barbecue.nix

    # Git
    ./plugins/git/lazygit.nix
    ./plugins/git/gitsigns.nix

    # Utils
    ./plugins/utils/web-devicons.nix
    ./plugins/utils/whichkey.nix
    ./plugins/utils/toggleterm.nix
  ];
}
