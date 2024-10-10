{

  # Enable @wheel

  nix.settings.allowed-users = [ "@wheel" ];

  # Set your time zone

  time.timeZone = "Europe/Madrid";

  # Configure console keymap
  console.keyMap = "es";

  # RTKit 
  security.rtkit.enable = true;

  # Power Management
  powerManagement.enable = true;  
}
