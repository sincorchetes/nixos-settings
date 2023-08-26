{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
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
      ./openssh.nix
      <home-manager/nixos>
    ];
}

