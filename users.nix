{ config, pkgs, ... }:

{
  users.users.sincorchetes = {
    isNormalUser = true;
    home = "/home/sincorchetes";
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };
  
  home-manager.users.sincorchetes = { pkgs, ... }: {
  programs.bash.enable = true;
  home.stateVersion = "23.05";
  nixpkgs.config = {
    allowUnfree = true;
  };
  home.packages = [
       pkgs.vim
       pkgs.git
       pkgs.tree
       pkgs.htop
       pkgs.google-chrome
       pkgs.firefox
       pkgs.vscode
       pkgs.teams
       pkgs.telegram-desktop
       pkgs.obs-studio
       pkgs.vlc
       pkgs.gimp
       pkgs.inkscape
       pkgs.tmux
       pkgs.jetbrains.datagrip
       pkgs.jetbrains.pycharm-professional
       pkgs.spotify
    ];
  };
}
