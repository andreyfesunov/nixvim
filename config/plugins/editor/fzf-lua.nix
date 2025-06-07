{
  plugins.fzf-lua = {
    enable = true;
    keymaps = {
      "<Tab>" = "up";
      "<S-Tab>" = "down";
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>bl";
      action = "<CMD>FzfLua buffers<CR>";
      options = {
        desc = "Buffers List";
      };
    }
    {
      mode = "n";
      key = "<leader>bg";
      action = "<CMD>FzfLua live_grep<CR>";
      options = {
        desc = "Find in Text (Live Grep)";
      };
    }
    {
      mode = "n";
      key = "<leader>bf";
      action = "<CMD>FzfLua files<CR>";
      options = {
        desc = "Find Files";
      };
    }
  ];

  extraConfigLua = ''
    local fzf = require('fzf-lua')

    -- Remap fzf-lua tab/s-tab from multiselect to up/down
    fzf.setup({
      keymap = {
        fzf = {
          ["tab"] = "down",
          ["shift-tab"] = "up"
        }
      }
    })
  '';
}
