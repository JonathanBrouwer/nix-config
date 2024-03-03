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
    kdePackages.kdeconnect-kde
    ripgrep
    cargo
    rustc
    rustfmt
    clippy
    spotify
    vscode
    firefox
    gimp
    vlc
    jetbrains.rust-rover
    desktop-file-utils
    (pkgs.buildEnv { name="my-scripts"; paths = [ ./scripts ]; })
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

#   qt = {
#     enable = true;
#     platformTheme = "kde";
#   };
/*
  programs.plasma = {
    enable = true;
    workspace = {
      theme = "breeze-dark";
      colorScheme = "BreezeDark";
    };

    kwin.titlebarButtons = {
      right = [ "keep-above-windows" "minimize" "maximize" "close" ];
    };*/

#     spectacle.shortcuts = {
#       captureActiveWindow = "Meta+Print";
#       captureCurrentMonitor = "Print";
#       captureEntireDesktop = "Shift+Print";
#       captureRectangularRegion = "Meta+Shift+S";
#       captureWindowUnderCursor = "Meta+Ctrl+Print";
#       launch = "Meta+S";
#       launchWithoutCapturing = "Meta+Alt+S";
#     };
#   };





}
