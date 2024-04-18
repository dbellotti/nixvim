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

  opts = {
    number = true;
    relativenumber = true;
    #shiftwidth = 2;
  };

  plugins = {
    #dashboard.enable = true;
    fugitive.enable = true;
    indent-blankline.enable = true;
    lualine.enable = true;
    nix.enable = true;
    treesitter.enable = true;

    gitgutter = {
      enable = true;
      #matchBackgrounds = true;
    };
  };
}
