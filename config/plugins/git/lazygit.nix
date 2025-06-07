{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    lazygit-nvim
  ];

  keymaps = [
    {
      mode = "n";
      key = "<leader>gl";
      action = "<cmd>LazyGit<CR>";
      options = {
        desc = "LazyGit (root dir)";
      };
    }
  ];
}
