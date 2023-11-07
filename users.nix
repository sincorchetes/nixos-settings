{ config, pkgs, ... }:

{
  users.users.sincorchetes = {
    isNormalUser = true;
    home = "/home/sincorchetes";
    extraGroups = [ 
	"wheel" 
	"vboxusers" 
	"docker"
	"kvm"
	"video" 
	"audio" 
	"users"
        "input"
        "bluetooth" 
    ];
  };
}
