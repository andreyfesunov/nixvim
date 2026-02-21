# mini-pick - simple file picker
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
    {
      mode = "n";
      key = "<leader>r";
      action = "<cmd>lua MiniPick.builtin.grep_live()<cr>";
      options = {
        desc = "File Grep";
      };
    }
  ];
}
