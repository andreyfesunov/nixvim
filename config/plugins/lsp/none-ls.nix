# none-ls - linters, formatters
{
  plugins.none-ls = {
    enable = true;
    sources = {
      formatting = {
        nixfmt.enable = true;
        markdownlint.enable = true;
        shfmt.enable = true;
      };
    };
  };
}
