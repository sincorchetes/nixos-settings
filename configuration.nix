{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./boot.nix
      ./locale.nix
      ./xfce.nix
      ./console.nix
      ./datetime.nix
      ./users.nix
      ./sound.nix
      ./network.nix
      ./nixos-version.nix
      ./nonfree-software.nix
    ];
}
