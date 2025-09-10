_: {
  imports = [
    # Main Settings
    ./settings.nix
    ./keymaps.nix

    # CoC
    ./plugins/coc/coc.nix

    # Editor
    ./plugins/editor/oil.nix
    ./plugins/editor/treesitter.nix
    ./plugins/editor/lualine.nix
    ./plugins/editor/barbecue.nix
    ./plugins/editor/scrollview.nix
    ./plugins/editor/colorscheme.nix
    ./plugins/editor/harpoon.nix
    ./plugins/editor/precognition.nix
    ./plugins/editor/startify.nix
    ./plugins/editor/snacks.nix

    # Git
    ./plugins/git/gitsigns.nix

    # Utils
    ./plugins/utils/web-devicons.nix
    ./plugins/utils/whichkey.nix
  ];
}
