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
    indent-blankline.enable = true;
    lualine.enable = true;
    nix.enable = true;
    treesitter.enable = true;

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

    gitgutter = {
      enable = true;
      #matchBackgrounds = true; # not sure if this does anything
    };
  };
}
