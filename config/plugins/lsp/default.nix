# LSP Configuration
{
  # pkgs,
  ...
}:
{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      bashls.enable = true;
      nixd.enable = true;
      tinymist.enable = true; # typst lsp
      csharp_ls.enable = true;
      ts_ls.enable = true;
      html.enable = true;
      cssls.enable = true;
      angularls.enable = true;
      clangd.enable = true;
    };
    keymaps.lspBuf = {
      "gd" = "definition";
      "gr" = "references";
      "gi" = "implementation";
      "ga" = "code_action";
      "gR" = "rename";
      "K" = "hover";
    };
  };
  plugins.rustaceanvim.enable = true;
}
