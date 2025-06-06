_: {
  imports = [
    # Main Settings
    ./settings.nix
    ./keymaps.nix

    # LSP
    ./plugins/lsp/lsp.nix

    # Cmp
    ./plugins/cmp/autopairs.nix

    # Git
    ./plugins/git/lazygit.nix

    # Utils
    ./plugins/utils/web-devicons.nix
    ./plugins/utils/telescope.nix
    ./plugins/utils/whichkey.nix
  ];
}
