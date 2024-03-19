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

  plugins = {
    # dashboard.enable = true;
    # alpha.enable = true;
    # alpha.theme = "dashboard";

    telescope = {
      enable = true;
      extensions = {
        file_browser.enable = true;
        fzf-native.enable = true;
        frecency.enable = true;
        ui-select.enable = true;
      };
      keymaps = {
        "<leader>ff" = {
          action = "find_files";
          desc = "find files";
        };
        "<leader>fg" = {
          action = "live_grep";
          desc = "live grep";
        };
      };
    };

    # which-key.enable = true;

    nix.enable = true;

    lsp = {
      enable = true;
      servers = {
        nixd.enable = true;
        lua-ls.enable = true;

        # pylsp.enable = true;
        pyright.enable = true;
        # ruff-lsp.enable = true;

        # ccls.enable = true;
        clangd.enable = true;
        cmake.enable = true;
      };
      keymaps = {
        lspBuf = {
          K = "hover";
          gD = "references";
          gd = "definition";
          gi = "implementation";
          gt = "type_definition";
        };
      };
      # https://github.com/neovim/nvim-lspconfig/issues/96#issuecomment-748325498
      # disable virtual text. for now.
      onAttach = ''
        vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
          vim.lsp.diagnostic.on_publish_diagnostics, {
            -- disable virtual text
            virtual_text = false,

            -- show signs
            signs = true,

            -- delay update diagnostics
            update_in_insert = false,
          }
        )
      '';
    };

    nvim-cmp = {
      enable = true;
      sources =
      [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "buffer"; }
        { name = "nvim_lsp_document_symbol"; }
        { name = "nvim_lsp_signature_help"; }
        
      ];
      mapping = {
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-e>" = "cmp.mapping.close()";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<S-Tab>" = {
          action = "cmp.mapping.select_prev_item()";
          modes = [
            "i"
            "s"
          ];
        };
        "<Tab>" = {
          action = "cmp.mapping.select_next_item()";
          modes = [
            "i"
            "s"
          ];
        };

      };

    };
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lsp-document-symbol.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;

    gitsigns = {
      enable = true;
    };

    auto-session.enable = true;
    # auto-session.autoRestore.enabled = true;
    # auto-session.autoSave.enabled = true;
    # auto-session.autoSession.enableLastSession = true;

    nvim-tree.enable = true;
  };
}
