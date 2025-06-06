{
  plugins.oil = {
    enable = true;
    settings = {
      experimental_watch_for_changes = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Oil<CR>";
      options = {
        desc = "Oil (File Explorer)";
      };
    }
  ];
}
