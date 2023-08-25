{ config, pkgs, ... }:
{
  boot.kernelModules = [ "dm-crypt" "zfs" ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot";
  boot.supportedFilesystems = [ "zfs" ];
  boot.zfs.requestEncryptionCredentials = true;
  boot.initrd.luks.devices = {
      zfsroot = {
        device = "/dev/disk/by-uuid/ce4b94aa-fd4a-46a4-aa5e-5097e4b978ab";
        preLVM = true;
      };
  };
  networking.hostId = "8d761eca";
  environment.systemPackages = with pkgs; [
    zfs
  ];
}
