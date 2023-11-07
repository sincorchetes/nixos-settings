{ pkgs, config, ... }:
{
  environment.systemPackages = with pkgs; [ bridge-utils ];  
  nixpkgs.config.allowUnfree = true;
  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "user-with-access-to-virtualbox" ]; 
  virtualisation.virtualbox.host.enableExtensionPack = true;

}
