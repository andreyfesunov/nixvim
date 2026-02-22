# arrow - bookmark plugin
{
  plugins.arrow.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<leader>a";
      action = "<cmd>Arrow open<cr>";
      options = {
        desc = "Arrow";
      };
    }
  ];
}
