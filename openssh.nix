{
  services.openssh = {
    enable = true;
    ports = [ 22 ];
    settings = {
      UseDns = false;
      PasswordAuthentication = true;
      PubkeyAuthentication = true;
      X11Forwarding = false;
    };
    hostKeys = [
      {
        path = "/etc/ssh/ssh_host_ed25519_key";
        type = "ed25519";
      }
    ];
  };
}
