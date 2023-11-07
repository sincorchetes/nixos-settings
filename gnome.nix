{ pkgs, config, ... }:
{
  environment.systemPackages = with pkgs; [ gnomeExtensions.appindicator ];
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];

  services.xserver = {
  enable = true;
  displayManager.gdm.enable = true;
  desktopManager.gnome.enable = true;
  layout = "es";
  libinput= {
    enable = true;

    touchpad = {
      tapping = true;
      };
    };
  };
  services.avahi = {
    enable = false;
    nssmdns = false;
  };
}


