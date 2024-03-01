{pkgs}:

pkgs.writeShellScriptBin "rebuild" ''
cd $HOME/nix-config
sudo nixos-rebuild switch --flake .#
xdg-desktop-menu forceupdate
''
