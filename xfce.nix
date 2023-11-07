{
  services.xserver = {
    enable = true;
    desktopManager = {
      xterm.enable = false;
      xfce.enable = true;
    };
    layout = "es";
    libinput.enable = true;
    displayManager.defaultSession = "xfce";
  };
}
