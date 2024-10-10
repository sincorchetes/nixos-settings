{ config, lib, pkgs, ... }:

{
  # System Packages Default Will Be Installed
  environment = {
    systemPackages = with pkgs; [
       vmware-workstation
       docker
       xdg-utils
       pritunl-client
       pciutils
       linux-firmware
       microcodeIntel
       iucode-tool
       fwupd
       fwupd-efi
       bridge-utils
    ];
  };


  # nixOS Packages settings
  nixpkgs = {
    config = {
      allowUnfree = true;
      packageOverrides = pkgs: {
        vaapiIntel = pkgs.vaapiIntel.override { enableHybridCodec = true; };
      };
    };
    hostPlatform = lib.mkDefault "x86_64-linux";
  };

  # nixOS System version
  system.stateVersion = "24.05";
}
