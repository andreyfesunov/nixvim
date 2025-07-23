{
  globals.mapleader = " ";

  keymaps = [
    # Buffer Navigation
    {
      mode = "n";
      key = "<Tab>";
      action = ":bnext<cr>";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Navigation
    {
      mode = "n";
      key = "<C-k>";
      action = ":wincmd k<CR>";
      options = {
        desc = "Go to Up window";
      };
    }
    {
      mode = "n";
      key = "<C-j>";
      action = ":wincmd j<CR>";
      options = {
        desc = "Go to Bottom window";
      };
    }
    {
      mode = "n";
      key = "<C-l>";
      action = ":wincmd l<CR>";
      options = {
        desc = "Go to Right window";
      };
    }
    {
      mode = "n";
      key = "<C-h>";
      action = ":wincmd h<CR>";
      options = {
        desc = "Go to Left window";
      };
    }

    # Split
    {
      mode = "n";
      key = "|";
      action = ":vsplit<CR>";
      options = {
        desc = "Vertical screen split";
      };
    }
    {
      mode = "n";
      key = "\\";
      action = ":split<CR>";
      options = {
        desc = "Horizontal screen split";
      };
    }

    # Moving blocks
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options = {
        desc = "Move block down";
      };
    }
    {
      mode = "v";
      key = "K";
      action = ":m '>-2<CR>gv=gv";
      options = {
        desc = "Move block up";
      };
    }

    # Other
    {
      mode = "n";
      key = "<leader>w";
      action = ":w<CR>";
      options = {
        desc = "Save";
      };
    }
    {
      mode = "i";
      key = "jj";
      action = "<Esc>";
      options = {
        desc = "Go to normal mode";
      };
    }

    # Clipboard
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>YY";
      action = "\"+y";
      options = {
        desc = "Yank selected to PRIMARY";
      };
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>PP";
      action = "\"+p";
      options = {
        desc = "Paste selected from PRIMARY";
      };
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>Yy";
      action = "\"*y";
      options = {
        desc = "Yank selected to CLIPBOARD";
      };
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>Pp";
      action = "\"*p";
      options = {
        desc = "Paste selected from CLIPBOARD";
      };
    }
  ];
}
