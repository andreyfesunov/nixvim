# LSP Configuration
{ pkgs, ... }:
{
  plugins.lsp = {
    enable = true;
    servers = {
      bashls.enable = true;
      nixd.enable = true;
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      tinymist.enable = true; # typst lsp
      c3_lsp = {
        enable = true;
        package = pkgs.c3-lsp;
      };
      csharp_ls.enable = true;
    };
    keymaps.lspBuf = {
      "gd" = "definition";
      "gr" = "references";
      "gi" = "implementation";
      "K" = "hover";
    };
  };
}
