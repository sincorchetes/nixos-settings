# nixOS configuration settings

## Setup Home-manager (globally)

```
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.05.tar.gz home-manager
sudo nix-channel --update
sudo nixos-rebuild switch
```

## Create a init home-manager config file

```
nix-shell '<home-manager>' -A install
```
This creates a file in `.config/home-manager/home.nix`

## Customize `.profile`

Add this line `. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"`

### Setup packages
Edit this file `~/.config/home-manager/home.nix`, and add your package in this section:

```
home.packages = [
       pkgs.NAME_OF_PACKAGE
    ];
```

Example:

```
home.packages = [
       pkgs.vim
       pkgs.jetbrains.datagrip
       pkgs.jetbrains.pycharm-professional
       pkgs.spotify
    ];
```

