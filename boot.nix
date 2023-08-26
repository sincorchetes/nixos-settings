{ config, pkgs, ... }:
{
 boot.loader.systemd-boot.enable = true;
 boot.loader.efi.canTouchEfiVariables = true;
 boot.loader.efi.efiSysMountPoint = "/boot";
 boot.initrd.luks.devices.cryptlvm = {
  device = "/dev/disk/by-uuid/$(blkid -s UUID -o value /dev/nvme0n1p2)";
  allowDiscards = true;
  };
}
