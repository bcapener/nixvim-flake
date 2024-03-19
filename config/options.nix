{
  # If you are using makeNixvimWithModule, then options are treated as options for a module.
  # To get around this, just wrap the options in a config set.
  config = {
    # globals.mapleader = " "; # Sets the leader key to space

    # NeoVim has a lot of configuration options.
    # You can find a list of them by doing `:h option-list` from within NeoVim.
    options = {
      number = true;
      relativenumber = true;
      incsearch = true;
      foldenable = false;
      mouse = "a";
    };
  };
}
