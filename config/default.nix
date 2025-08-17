_: {
  imports = [
    # Main Settings
    ./settings.nix
    ./keymaps.nix

    # CoC (replaces builtin LSP + cmp) and handles completion, formatting, pairs
    ./plugins/coc/coc.nix

    # Editor
    ./plugins/editor/oil.nix
    ./plugins/editor/treesitter.nix
    ./plugins/editor/indent-blankline.nix
    ./plugins/editor/lualine.nix
    ./plugins/editor/startify.nix
    ./plugins/editor/fzf-lua.nix
    ./plugins/editor/barbecue.nix
    ./plugins/editor/scrollview.nix
    ./plugins/editor/colorscheme.nix
    ./plugins/editor/harpoon.nix
    ./plugins/editor/precognition.nix

    # Git
    ./plugins/git/lazygit.nix
    ./plugins/git/gitsigns.nix

    # Utils
    ./plugins/utils/web-devicons.nix
    ./plugins/utils/whichkey.nix
    ./plugins/utils/toggleterm.nix
  ];
}
