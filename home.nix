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
    hello
    stow
    zsh
    zoxide
    mr
  ];

  home.file = {
    ".zshrc".source = config.lib.file.mkOutOfStoreSymlink
    	"/home/ryan/.config/home-manager/dotfiles/zsh/.zshrc";
    ".p10k.zsh".source = config.lib.file.mkOutOfStoreSymlink
    	"/home/ryan/.config/home-manager/dotfiles/zsh/.p10k.zsh";
    ".mrconfig".source = config.lib.file.mkOutOfStoreSymlink
    	"/home/ryan/.config/home-manager/dotfiles/mr/.mrconfig";
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # zsh
  #programs.zsh = {
  #  enable = true;
  #};

  # zsh
  programs.neovim = {
    enable = true;
    vimAlias = true;
    viAlias = true;
    vimdiffAlias = true;
  };

  # git
  programs.git = {
    enable = true;
    userName = "Ryan Bruno";
    userEmail = "ryanbruno506@gmail.com";
  };
}
