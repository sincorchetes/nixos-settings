{ ... }:

{
  boot = {

    # Enable EFI support

    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    # RAM Image Kernel Modules

    initrd = {
      availableKernelModules = [ "xhci_pci" "nvme" "usb_storage" "sd_mod" "rtsx_pci_sdmmc" ];
      luks.devices."luks-6097b0fd-0702-497d-bc8c-43477f024400".device = "/dev/disk/by-uuid/6097b0fd-0702-497d-bc8c-43477f024400";
    };

    # Set Kernel Modules
    
    kernelModules = [ "kvm-intel" ];
    extraModulePackages = [ ];
    
    # Set Kernel Parameters

    kernelParams = [
      # Disable "Panel Self Refresh".  Fix random freezes.
      "i915.enable_psr=0"
    ];
  };
}
