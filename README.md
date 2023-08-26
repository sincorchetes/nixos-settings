## nixOS configuration settings

### Setup Home-manager (globally)
```
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.05.tar.gz home-manager
sudo nix-channel --update
sudo nixos-rebuild switch
```
### Custom user
```
nix-shell '<home-manager>' -A install
```

### Customize `.profile`
Add this line `. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"`

### Setup packages
Edit this file `~/.config/home-manager/home.nix`, and ad your package in this section:

```
home.packages = [
       pkgs.NAME_OF_PACKAGE
    ];
```

An example:
```
home.packages = [
       pkgs.vim
       pkgs.jetbrains.datagrip
       pkgs.jetbrains.pycharm-professional
       pkgs.spotify
    ];
```

