{ pkgs, config, ... }:

{
 programs.hyprland.enable = true;
  environment.systemPackages = [
    pkgs.transmission-gtk
    pkgs.tmux
    pkgs.termius
    pkgs.font-awesome
    pkgs.gnome.gnome-tweaks
    pkgs.neofetch
    pkgs.vim
    pkgs.spotify
    pkgs.firefox
    pkgs.google-chrome
    pkgs.gimp
    pkgs.vagrant
    pkgs.inkscape
    pkgs.ncdu
    pkgs.htop
    pkgs.libreoffice
    pkgs.vscode
    pkgs.vlc
    pkgs.gnome.cheese
    pkgs.unzip
    pkgs.unrar
    pkgs.steam
    pkgs.git
    pkgs.zsh
    pkgs.telegram-desktop
    pkgs.obs-studio
    pkgs.borgbackup
    pkgs.zoom-us
    pkgs.acpi
    pkgs.poetry
    pkgs.python311
  ];
}
