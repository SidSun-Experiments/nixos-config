{ config, pkgs, ... }:

{ 
  home-manager.users.sids = {
#    programs.fish.enable = true;
  };

  services.flatpak.enable = true;
  # add in config.nix: users.users.<myuser>.extraGroups = [ "docker" ];
  #virtualisation.docker.enable = true;
  #virtualization.docker.enableNvidia = true;
  services.tailscale.enable = true;

  virtualisation = {
    docker = {
      enable = true;
      enableNvidia = true;
    };
  };
  
  environment.systemPackages = [
    pkgs.gnome3.gnome-tweaks
    pkgs.tilix # da bess terminal
    pkgs.vscode
    pkgs.nodejs_20
    pkgs.python3
    pkgs.python3Packages.pip
    pkgs.python3Packages.argcomplete
    pkgs.python3Packages.virtualenv
    pkgs.python3Packages.pymdstat
    pkgs.pipx
    pkgs.unzip
    pkgs.btop
    pkgs.git
    pkgs.gnumake
    pkgs.websocat
    pkgs.restic
    pkgs.git-crypt
    pkgs.tree
    pkgs.dig
    pkgs.inetutils
    pkgs.sqlite
    pkgs.sqlite-web
    pkgs.silver-searcher
    pkgs.bintools
    pkgs.squashfsTools
    pkgs.binwalk
#    pkgs.postman
    ## Cached drivers for NVIDIA CUDA
    pkgs.cachix
    ## Goland
    pkgs.zulu
    pkgs.mdadm
#    pkgs.mdstat
  ];

  # go is installed with archive
}
