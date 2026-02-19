{
  plugins.mini-pick.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<leader>f";
      action = "<cmd>lua MiniPick.builtin.files()<cr>";
      options = {
        desc = "File Picker";
      };
    }
  ];
}
