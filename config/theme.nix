{pkgs, ...}: {

  # https://github.com/NixNeovim/NixNeovimPlugins/blob/main/plugins.md
  extraPlugins = [
    # pkgs.vimExtraPlugins.nvim-colorizer-lua
    pkgs.vimExtraPlugins.vscode-nvim
  ];
  colorscheme = "vscode";
}