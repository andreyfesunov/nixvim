{pkgs, ...}: {
  extraPlugins = [pkgs.ripgrep];
  plugins.spectre.enable = true;
}
