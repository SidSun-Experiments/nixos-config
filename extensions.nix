{ config, pkgs, ... }:

{ 
  environment.systemPackages = with pkgs.gnomeExtensions; [
    blur-my-shell
    pop-shell
    appindicator
    caffeine
    gnome-40-ui-improvements
    # ...
  ];
}
