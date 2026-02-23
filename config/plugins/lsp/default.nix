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
      tinymist.enable = true;
    };
    keymaps.lspBuf = {
      "gd" = "definition";
      "gr" = "references";
      "gi" = "implementation";
      "K" = "hover";
    };
  };
}
