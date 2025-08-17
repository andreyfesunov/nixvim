{
  plugins.precognition = {
    enable = true;
  };

  # Tweak precognition UI via direct setup to reduce noise
  extraConfigLua = ''
    local ok, precognition = pcall(require, 'precognition')
    if ok and precognition and precognition.setup then
      precognition.setup({
        -- Reduce noise
        showBlankVirtLine = false,
      })

      -- Ensure hidden on startup regardless of plugin defaults
      if type(precognition.hide) == 'function' then
        pcall(precognition.hide)
      else
        pcall(vim.cmd, 'Precognition disable')
      end

      -- Robust toggle that guarantees first press shows hints
      vim.g.__precognition_shown = 0
      vim.keymap.set('n', '<leader>up', function()
        if vim.g.__precognition_shown == 1 then
          if type(precognition.hide) == 'function' then
            precognition.hide()
          else
            pcall(vim.cmd, 'Precognition disable')
          end
          vim.g.__precognition_shown = 0
        else
          if type(precognition.show) == 'function' then
            precognition.show()
          else
            pcall(vim.cmd, 'Precognition enable')
          end
          vim.g.__precognition_shown = 1
        end
      end, { desc = 'Toggle precognition' })
    end
  '';
}
