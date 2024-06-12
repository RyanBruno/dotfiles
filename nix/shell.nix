let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    pkgs.zsh
    pkgs.mr
    pkgs.stow
    pkgs.zoxide
    pkgs.tmux
  ];
}
