{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./boot.nix
      ./locale.nix
#      ./xfce.nix
      ./bluetooth.nix
      ./firewall.nix
      ./gnome.nix
      ./console.nix
      ./datetime.nix
      ./users.nix
      ./sound.nix
      ./network.nix
      ./nixos-version.nix
      ./desktop-graphics.nix
      ./openssh.nix
      ./laptop.nix
      ./microcode.nix
      ./virtualbox.nix
      ./docker.nix
      ./user-software-list.nix
      ./vscode.nix
      ./multimedia.nix
    ];
}

