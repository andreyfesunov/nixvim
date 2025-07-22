{
  plugins.harpoon = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ha";
      action = "<cmd>lua require('harpoon'):list():add()<cr>";
      options = {
        desc = "Harpoon Add Mark";
      };
    }
    {
      mode = "n";
      key = "<leader>hl";
      action = "<cmd>lua require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())<cr>";
      options = {
        desc = "Harpoon Toggle Menu";
      };
    }
    {
      mode = "n";
      key = "<leader>h1";
      action = "<cmd>lua require('harpoon'):list():select(1)<cr>";
      options = {
        desc = "Harpoon Select First (1)";
      };
    }
    {
      mode = "n";
      key = "<leader>h2";
      action = "<cmd>lua require('harpoon'):list():select(2)<cr>";
      options = {
        desc = "Harpoon Select Second (2)";
      };
    }
    {
      mode = "n";
      key = "<leader>h3";
      action = "<cmd>lua require('harpoon'):list():select(3)<cr>";
      options = {
        desc = "Harpoon Select Third (3)";
      };
    }
    {
      mode = "n";
      key = "<leader>h4";
      action = "<cmd>lua require('harpoon'):list():select(4)<cr>";
      options = {
        desc = "Harpoon Select Fourth (4)";
      };
    }
    {
      mode = "n";
      key = "<leader>hp";
      action = "<cmd>lua require('harpoon'):list():prev()<cr>";
      options = {
        desc = "Harpoon Select Prev";
      };
    }
    {
      mode = "n";
      key = "<leader>hn";
      action = "<cmd>lua require('harpoon'):list():next()<cr>";
      options = {
        desc = "Harpoon Select Next";
      };
    }
  ];
}
