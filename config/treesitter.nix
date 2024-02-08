{
  plugins = {
    treesitter = {
      enable = true;
      # ensureinstalled = "all";
      folding = true;
      indent = true;
      incrementalSelection.enable = true;
    };

    treesitter-refactor = {
      enable = true;
      highlightCurrentScope.enable = true;
      highlightCurrentScope.disable = [
        "nix"
      ];
      highlightDefinitions.enable = true;
      navigation.enable = true;
      smartRename.enable = true;
    };
  };
}