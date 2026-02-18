# snacks - big collection of useful plugins
{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [snacks-nvim];

  extraConfigLua = ''
    -- Rename callback on oil rename
    vim.api.nvim_create_autocmd("User", {
      pattern = "OilActionsPost",
      callback = function(event)
        if event.data.actions.type == "move" then
          require('snacks').rename.on_rename_file(event.data.actions.src_url, event.data.actions.dest_url)
        end
      end,
    })

    -- Snacks setup
    require('snacks').setup({
      picker = {
        enabled = true,
        layout = {
          preset = "default",
          preview = true,
        },
        win = {
          input = {
            keys = {
              ["<C-s>"] = { "to_quickfix", mode = { "n", "i" } },
            }
          }
        },
        actions = {
          to_quickfix = function(picker)
            Snacks.picker.actions.qflist(picker)
          end,
        }
      },

      git = {
        enabled = true,
      },

      rename = {
        enabled = true,
      },

      bigfile = {
        enabled = true,
      },

      notifier = {
        enabled = true,
      },

      statuscolumn = {
        enabled = true,
      },

      indent = {
        enabled = true,
        indent = { enabled = true },
        scope = { enabled = false },
        animate = { enabled = false },
      }
    })
  '';

  keymaps = [
    # Picker
    {
      mode = "n";
      key = "<leader>be";
      action = ":lua require('snacks').picker.explorer()<CR>";
      options.desc = "Open Explorer";
    }
    {
      mode = "n";
      key = "<leader>bl";
      action = ":lua require('snacks').picker.buffers()<CR>";
      options.desc = "Find in Buffers";
    }
    {
      mode = "n";
      key = "<leader>bg";
      action = ":lua require('snacks').picker.grep()<CR>";
      options.desc = "Find in Text (Live Grep)";
    }
    {
      mode = "n";
      key = "<leader>bc";
      action = ":lua require('snacks').picker.command_history()<CR>";
      options.desc = "Find in Commands";
    }
    {
      mode = "n";
      key = "<leader>bn";
      action = ":lua require('snacks').picker.notifications()<CR>";
      options.desc = "Find in Notifications";
    }
    {
      mode = "n";
      key = "<leader>bf";
      action = ":lua require('snacks').picker.files()<CR>";
      options.desc = "Find in Files";
    }
    {
      mode = "n";
      key = "<leader>br";
      action = ":lua require('snacks').picker.resume()<CR>";
      options.desc = "Resume";
    }
    {
      mode = "n";
      key = "<leader>bq";
      action = ":lua require('snacks').picker.qflist()<CR>";
      options.desc = "Find in Quickfix List";
    }
  ];
}
