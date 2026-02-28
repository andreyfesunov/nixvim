# LSP Configuration
{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      bashls.enable = true;
      nixd.enable = true;
      tinymist.enable = true; # typst lsp
      csharp_ls.enable = true;
    };
    keymaps.lspBuf = {
      "gd" = "definition";
      "gr" = "references";
      "gi" = "implementation";
      "K" = "hover";
    };
  };
  plugins.rustaceanvim.enable = true;
}
