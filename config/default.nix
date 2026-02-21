_: {
  imports = [
    # Main Settings
    ./settings.nix
    ./keymaps.nix

    # LSP
    ./plugins/lsp/default.nix
    ./plugins/lsp/none-ls.nix
    ./plugins/lsp/trouble.nix
    ./plugins/lsp/cmp.nix
    ./plugins/lsp/lsp-format.nix

    # Editor
    ./plugins/editor/oil.nix
    ./plugins/editor/treesitter.nix
    ./plugins/editor/lualine.nix
    ./plugins/editor/barbecue.nix
    ./plugins/editor/scrollview.nix
    ./plugins/editor/colorscheme.nix
    ./plugins/editor/harpoon.nix
    ./plugins/editor/quicker.nix
    ./plugins/editor/mini-starter.nix
    ./plugins/editor/mini-comment.nix
    ./plugins/editor/mini-sessions.nix
    ./plugins/editor/mini-pick.nix
    ./plugins/editor/mini-pairs.nix
    ./plugins/editor/mini-notify.nix

    # Git
    ./plugins/git/gitsigns.nix
    ./plugins/git/neogit.nix

    # Utils
    ./plugins/utils/web-devicons.nix
    ./plugins/utils/whichkey.nix
  ];
}
