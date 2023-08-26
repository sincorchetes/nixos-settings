{ config, pkgs, ... }:

{
  users.users.sincorchetes = {
    isNormalUser = true;
    home = "/home/sincorchetes";
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };
}
