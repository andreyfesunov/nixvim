{
  plugins.neogit.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<leader>gn";
      action = "<cmd>:Neogit<cr>";
      options = {
        desc = "Neogit";
      };
    }
  ];
}
