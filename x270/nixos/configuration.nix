{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./boot.nix
      ./language.nix
      ./network.nix
      ./services.nix
      ./system.nix
      ./packages.nix
      ./users.nix
    ];
}
