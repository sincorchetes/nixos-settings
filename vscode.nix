{ config, pkgs, ... }:

let
  myVscode = pkgs.vscode.overrideAttrs (oldAttrs: rec {
    version = "1698838111";
    src = pkgs.fetchurl {
      url = "https://az764295.vo.msecnd.net/stable/d037ac076cee195194f93ce6fe2bdfe2969cc82d/code-stable-x64-1698838111.tar.gz";
      sha256 = "8e868ea2f475e900fe5b59a3f459acb62ccc11c11eb07769173092c56f03bc07";
    };
    buildInputs = oldAttrs.buildInputs or [] ++ [ pkgs.krb5 ];
  });
in
{

  environment.systemPackages = with pkgs; [
    myVscode
  ];

}
