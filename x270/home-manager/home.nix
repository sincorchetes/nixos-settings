{ config, pkgs, ... }:

{
  imports =
    [
      ./packages.nix
    ];
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "sincorchetes";
  home.homeDirectory = "/home/sincorchetes";

  # Set Environment Variables
  home.sessionVariables = {
    EDITOR = "vim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.bash = {
    enable = true;
    shellAliases = {
      g = "git";
      k = "kubectl";
    };
  };
}
