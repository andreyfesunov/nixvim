{
  plugins.oil = {
    enable = true;
    settings = {
      view_options.show_hidden = true;
      keymaps = {
        "<C-l>" = false;
        "<C-h>" = false;
        "<C-s>" = false;
        "<C-t>" = false;
        "<C-r>" = "actions.refresh";
      };
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
