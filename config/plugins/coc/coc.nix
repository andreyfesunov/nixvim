{ pkgs, ... }:
{
  extraPlugins = [
    pkgs.vimPlugins.coc-nvim
    pkgs.vimPlugins.friendly-snippets
  ];
  # Ensure Node.js (for coc) and nil (nix LSP) are available
  extraPackages = [
    pkgs.nodejs
    pkgs.nil
    pkgs.stylua
    pkgs.shfmt
    pkgs.shellcheck
    pkgs.ruff
    pkgs.efm-langserver
    pkgs.alejandra
  ];

  extraConfigLua = ''
    vim.g.coc_global_extensions = {
      'coc-json',
      'coc-yaml',
      'coc-nix',
      'coc-elixir',
      'coc-go',
      'coc-tsserver',
      'coc-angular',
      'coc-pyright',
      'coc-omnisharp',
      'coc-solidity',
      -- Formatting & Web
      'coc-prettier',
      'coc-html',
      'coc-css',
      -- Pairs & Emmet
      'coc-pairs',
      'coc-emmet',
      -- Extra formatters/providers
      'coc-stylua',
      'coc-sh',
      'coc-snippets',
    }

    -- Configure CoC: nix LSP, format on save, Prettier, Emmet, HTML autoclose tags
    vim.g.coc_user_config = vim.tbl_deep_extend('force', vim.g.coc_user_config or {}, {
      nix = {
        enableLanguageServer = true,
        serverPath = 'nil',
      },
      ["coc.preferences"] = {
        formatOnSave = true,
        formatOnType = true,
      },
      prettier = {
        enable = true,
        requireConfig = false,
      },
      emmet = {
        triggerExpansionOnTab = true,
        includeLanguages = { typescriptreact = 'html', javascriptreact = 'html', astro = 'html' },
      },
      html = {
        autoClosingTags = true,
      },
      languageserver = {
        ruff = {
          command = 'ruff',
          args = { 'server' },
          filetypes = { 'python' },
        };
        efm = {
          command = 'efm-langserver',
          filetypes = { 'nix' },
          rootPatterns = { '.git/' },
          initializationOptions = { documentFormatting = true },
          settings = {
            rootMarkers = { '.git/' },
            languages = {
              nix = {
                {
                  formatCommand = 'alejandra -q',
                  formatStdin = true,
                },
              },
            },
          },
        },
      },
    })

    local keymap = vim.keymap.set
    local opts = { silent = true, nowait = true }

    keymap('n', '<leader>lh', function()
      vim.fn.CocActionAsync('doHover')
    end, vim.tbl_extend('force', opts, { desc = 'Hover' }))

    keymap('n', '<leader>ld', '<Plug>(coc-definition)', vim.tbl_extend('force', opts, { desc = 'Go to Definition' }))
    keymap('n', '<leader>li', '<Plug>(coc-implementation)', vim.tbl_extend('force', opts, { desc = 'Go to Implementation' }))
    keymap('n', '<leader>lr', '<Plug>(coc-references)', vim.tbl_extend('force', opts, { desc = 'Go to References' }))
    keymap('n', '<leader>lR', '<Plug>(coc-rename)', vim.tbl_extend('force', opts, { desc = 'Rename' }))
    keymap('n', '<leader>la', '<Plug>(coc-codeaction)', vim.tbl_extend('force', opts, { desc = 'Code Actions' }))

    keymap('n', '<leader>lD', ':CocDiagnostics<CR>', vim.tbl_extend('force', opts, { desc = 'Diagnostics' }))
    keymap('n', '[d', '<Plug>(coc-diagnostic-next)', vim.tbl_extend('force', opts, { desc = 'Next Diagnostic' }))
    keymap('n', ']d', '<Plug>(coc-diagnostic-prev)', vim.tbl_extend('force', opts, { desc = 'Prev Diagnostic' }))

    -- Completion controls
    vim.api.nvim_set_keymap('i', '<C-Space>', 'coc#refresh()', { noremap = true, silent = true, expr = true })
    vim.api.nvim_set_keymap('i', '<CR>', [[coc#pum#visible() ? coc#pum#confirm() : v:lua.__coc_fallback_cr()]], { noremap = true, silent = true, expr = true })
    vim.api.nvim_set_keymap('i', '<Tab>', [[coc#pum#visible() ? coc#pum#next(1) : v:lua.__coc_fallback_tab()]], { noremap = true, silent = true, expr = true })
    vim.api.nvim_set_keymap('i', '<S-Tab>', [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], { noremap = true, silent = true, expr = true })

    _G.__coc_fallback_cr = function()
      return "\r"
    end

    _G.__coc_fallback_tab = function()
      return "\t"
    end

    -- Emmet: expand abbreviation on <leader>le
    keymap('n', '<leader>le', function()
      vim.fn.CocAction('runCommand', 'emmet.expandAbbreviation')
    end, vim.tbl_extend('force', opts, { desc = 'Emmet expand abbreviation' }))
  '';

  # VSCode-style snippets available to coc-snippets
  extraFiles = {
    "snippets/solidity.json".text = builtins.readFile ../../snippets/solidity.json;
    "snippets/csharp.json".text = builtins.readFile ../../snippets/csharp.json;
    "snippets/php.json".text = builtins.readFile ../../snippets/php.json;
  };
}
