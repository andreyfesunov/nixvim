{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>ff" = {
	      action = "find_files";
	      options = {
	        desc = "Find files";
	      };
      };
      "<leader>ft" = {
        action = "live_grep";
        options = {
          desc = "Find text";
        };
      };
      "<leader>fR" = {
        action = "resume";
        options = {
          desc = "Resume";
        };
      };
      "<leader>fb" = {
        action = "buffers";
        options = {
          desc = "Buffers";
        };
      };
    };
  };
  extraConfigLua = ''
    require("telescope").setup{
      pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    }
  '';
}
