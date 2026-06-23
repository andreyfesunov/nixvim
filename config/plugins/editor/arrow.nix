# arrow - bookmark plugin
{
  plugins.arrow = {
    enable = true;
    settings.leader_key = ",";
  };

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
