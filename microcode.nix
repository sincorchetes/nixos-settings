{ pkgs, config, ... }:
{
  environment.systemPackages = [
    pkgs.linux-firmware
    pkgs.microcodeIntel
    pkgs.iucode-tool
    pkgs.fwupd
    pkgs.fwupd-efi
  ];
}
