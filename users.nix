{ config, pkgs, ... }:

{
  users.users.sincorchetes = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
     packages = with pkgs; [
       vim
       git
       tree
       htop
       google-chrome
       firefox
       vscode
       teams
       telegram-desktop
       obs-studio
       vlc
       gimp
       inkscape
       tmux
       jetbrains.datagrip
       jetbrains.pycharm-professional
       spotify
    ];
  };
}
