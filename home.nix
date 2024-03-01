{ config, pkgs, ... }:

{
  imports = [ ];

  nixpkgs.config.allowUnfree = true;

  home.username = "jonathan";
  home.homeDirectory = "/home/jonathan";
  home.packages = with pkgs; [
    discord
    element-desktop
    git
    plasma5Packages.kdeconnect-kde
    ripgrep
    cargo
    rustc
    spotify
    vscode
    firefox
    kate
  ];

  programs.home-manager.enable = true;

  programs.bash = {
    enable = true;
  };

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions;
      [ rust-lang.rust-analyzer ];
  };

#   programs.firefox = {
#     enable = true;
#     profiles."jonathan" = {
#       extensions = with pkgs.nur.repos.rycee.firefox-addons; [
#         bitwarden
#         ublock-origin
#       ];
#       settings = {
#         "widget.use-xdg-desktop-portal.file-picker" = 1;
#       };
#     };
#   };

  programs.git = {
    enable = true;
    extraConfig = {
      init.defaultBranch = "main";
    };
    userName = "Jonathan Brouwer";
    userEmail = "jonathantbrouwer@gmail.com";
  };
}
