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
      typst_lsp = {
        enable = true;
        package = pkgs.typst;
      };
    };
    keymaps.lspBuf = {
      "gd" = "definition";
      "gr" = "references";
      "gi" = "implementation";
      "K" = "hover";
    };
  };
}
