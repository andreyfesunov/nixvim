{
  plugins = {
    lsp-lines.enable = true;
    lsp-format.enable = true;
    rustaceanvim.enable = true;

    lsp = {
      enable = true;
      inlayHints = true;

      servers = {
        jsonls.enable = true;
        yamlls.enable = true;
        nixd.enable = true;
        elixirls.enable = true;
        omnisharp.enable = true;
        gopls.enable = true;
        ts_ls.enable = true;
      };

      keymaps = {
        silent = true;
        lspBuf = {
          "<leader>ld" = {
            action = "definition";
            desc = "Go to Definition";
          };
          "<leader>li" = {
            action = "implementation";
            desc = "Go to Implementation";
          };
          "<leader>lh" = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>lR" = {
            action = "rename";
            desc = "Rename";
          };
          "<leader>lr" = {
            action = "references";
            desc = "Go to References";
          };
          "<leader>la" = {
            action = "code_action";
            desc = "Code Actions";
          };
        };

        diagnostic = {
          "<leader>lD" = {
            action = "open_float";
            desc = "Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Prev Diagnostic";
          };
        };
      };
    };
  };

  extraConfigLua = ''
    local _border = "rounded"

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = _border
      }
    )

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = _border
      }
    )

    vim.diagnostic.config{
      float={border=_border}
    };

    require('lspconfig.ui.windows').default_options = {
      border = _border
    }
  '';
}
