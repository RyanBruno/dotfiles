{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "ryan";
  home.homeDirectory = "/home/ryan";

  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
    stow
    zsh
    zoxide
    mr
    vim
    firefox
  ];

  home.file = {
    ".zshrc".source = config.lib.file.mkOutOfStoreSymlink
    	"/home/ryan/.config/home-manager/dotfiles/zsh/.zshrc";
    ".vimrc".source = config.lib.file.mkOutOfStoreSymlink
    	"/home/ryan/.config/home-manager/dotfiles/vim/.vimrc";
    ".p10k.zsh".source = config.lib.file.mkOutOfStoreSymlink
    	"/home/ryan/.config/home-manager/dotfiles/zsh/.p10k.zsh";
    ".mrconfig".source = config.lib.file.mkOutOfStoreSymlink
    	"/home/ryan/.config/home-manager/dotfiles/mr/.mrconfig";
  };

  home.sessionVariables = {
    EDITOR = "vim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # zsh
  #programs.zsh = {
  #  enable = true;
  #};

  # neovim
  #programs.neovim = {
  #  enable = true;
  #  vimAlias = true;
  #  viAlias = true;
  #  vimdiffAlias = true;
  #};

  # git
  programs.git = {
    enable = true;
    userName = "Ryan Bruno";
    userEmail = "ryanbruno506@gmail.com";
  };

  # ls
  programs.lf = {
    enable = true;
    settings = {
        preview = true;
        hidden = true;
        drawbox = true;
        icons = true;
        ignorecase = true;
    };
    commands = {
        editor-open = ''$$EDITOR $f'';
        mkdir = ''
        ''${{
          printf "Directory Name: "
          read DIR
          mkdir $DIR
        }}
        '';
    };
    keybindings = {
    };
  };
}
