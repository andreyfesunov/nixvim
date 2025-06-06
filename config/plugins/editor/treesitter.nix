{ pkgs, ... }:
{
  plugins.treesitter = {
    enable = true;
    settings = {
      indent.enable = true;
      highlight = {
        enable = true;
        disable = ''
          function()
            local buf_name = vim.fn.expand("%")
            if string.find(buf_name, "oil://") then
              return true
            end
          end
        '';
      };
    };
    folding = false;
    nixvimInjections = true;
    grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars; 
  };
}
