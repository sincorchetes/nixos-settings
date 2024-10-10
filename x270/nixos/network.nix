{ lib, ... }:

{
  networking = {

    # Set Hostname
    hostName = "nixos";

    # DHCP
    useDHCP = lib.mkDefault true;

    # Network Manager
    networkmanager.enable = true;

    # Firewall Settings
    firewall = {
      enable = true;
      allowedTCPPorts = [ 22 ]; 
    };
  };
}
