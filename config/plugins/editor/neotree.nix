# neo-tree - another one file manager on sidebar
{
  plugins.neo-tree.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<leader>ft";
      action = "<cmd>Neotree<CR>";
      options = {
        desc = "Neotree (File Explorer)";
      };
    }
  ];
}
