{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./options.nix
    ./theme.nix
    ./treesitter.nix
    ./lualine.nix
  ];

  globals.mapleader = " "; # Sets the leader key to space

  # plugins.dashboard.enable = true;
  plugins.alpha.enable = true;
  plugins.alpha.theme = "dashboard";

  plugins.telescope = {
    enable = true;
    extensions = {
      file_browser.enable = true;
      fzf-native.enable = true;
    };
  };

}
