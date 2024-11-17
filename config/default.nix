{
  # Import all your configuration modules here
  imports = [
    #./bufferline.nix
  ];

  #colorschemes.gruvbox.enable = true;
  #colorschemes.nord.enable = true;
  colorschemes.tokyonight.enable = true;
  #colorschemes.catppuccin.enable = true;
  #colorschemes.onedark.enable = true;

  globals.mapleader = ",";

  opts = {
    number = true;
    relativenumber = true;
    #shiftwidth = 2; # indenting needs testing
    conceallevel = 2; # hide special characters, good for markdown
  };

  plugins = {
    #dashboard.enable = true;
    fugitive.enable = true; # git wrapper
    gitgutter.enable = true;
    indent-blankline.enable = true;
    lualine.enable = true;
    nix.enable = true; # might remove if language server supports it and verified
    #nvim-tree.enable = true;
    #oil.enable = true;
    web-devicons.enable = true;

    # TODO
    #  - conflicts with lsp semantic highlighting by linking to different
    #  - highlight groups and drawing tokens from the language server
    treesitter = {
      enable = true;
      settings = {
        highlight.enable = true;
        indent.enable = true;
      };
    };

    telescope = {
      enable = true;
      keymaps = {
        "<C-p>" = {
          action = "git_files";
          options = {
            desc = "Telescope Git Files";
          };
        };
        "<leader>ff" = "find_files";
        "<leader>fg" = "live_grep";
      };
      extensions = {
        fzf-native.enable = true;
      };
    };

    lsp = {
      enable = true;
      servers = {
        nixd.enable = true;
        pyright.enable = true;
      };

      # TODO figure out how to do code_actions
      #keymaps.lspBuf = {
      #  # TODO these appear to be working while commented out
      #  "gd" = "definition";
      #  "gD" = "references";
      #  "gt" = "type_definition";
      #  "gi" = "implementation";
      #  "K" = "hover";
      #  "<leader>ca" = "code_actions"; ???
      #};
    };

    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
          { name = "nvim_lsp"; }
          #{ name = "luasnip"; }
          { name = "path"; }
          { name = "buffer"; }
        ];
      };
    };

    # verify the following that seemed interesting
    # not sure what each is doing (i'd like to demo)
    #cmp-treesitter.enable = true;
    #cmp-nvim-lsp.enable = true;
    #cmp-spell.enable = true;
    #cmp-dictionary.enable = true;
  };
}
