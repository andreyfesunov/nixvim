{
  plugins.oil = {
    enable = true;
    settings = {
      experimental_watch_for_changes = true;
    };
  };

  plugins.oil-git-status.enable = true;

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
