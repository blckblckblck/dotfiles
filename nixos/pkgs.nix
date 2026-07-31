{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    neovim
    fastfetch
    rustc
    fish
    cargo
    gcc
    kitty
    git
    curl
    wget
    jdk25
    openjfx
    flatpak
    brave
  ];
}
