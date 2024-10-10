{ pkgs, ... }:

{

  home = {
    stateVersion = "24.05";
    packages = [
      pkgs.vim
      pkgs.spotify
      pkgs.google-chrome
      pkgs.unrar
      pkgs.gimp
      pkgs.inkscape
      pkgs.vlc
      pkgs.kubectl
      pkgs.lens
      pkgs.google-cloud-sdk-gce
      pkgs.desktop-file-utils
      pkgs.warp-terminal
      pkgs.jetbrains.pycharm-professional
      pkgs.vscode.fhs
      pkgs.hping
      pkgs.nmap
      pkgs.aircrack-ng
      pkgs.wireshark
      pkgs.minikube
      pkgs.discord
      pkgs.slack
      pkgs.htop
      pkgs.ffmpeg_7-full
      pkgs.gst_all_1.gstreamer
      pkgs.gst_all_1.gst-vaapi
      pkgs.gst_all_1.gst-plugins-ugly
      pkgs.gst_all_1.gst-plugins-good
      pkgs.gst_all_1.gst-plugins-bad
      pkgs.gst_all_1.gst-libav
      pkgs.gpt4all
      pkgs.terraform
      pkgs.terragrunt
      pkgs.binutils
      pkgs.ncdu
      pkgs.neofetch
      pkgs.libreoffice
      pkgs.acpi
      pkgs.borgbackup
      pkgs.gh
      pkgs.telegram-desktop
      pkgs.transmission-gtk
      pkgs.pciutils
      pkgs.lm_sensors
      pkgs.tmux
      pkgs.git
      pkgs.zsh
      pkgs.zsh-powerlevel10k
      pkgs.bash-completion
      pkgs.pavucontrol
    ];
  };

 nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };
}
