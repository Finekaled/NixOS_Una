{ config, pkgs, ... }:

{
  # List packages used for office/notes functions. To search, run:
  # $ nix search wget
  programs.kdePackages.bovo.enable = true;
  programs.kdePackages.kmines.enable = true;
  programs.steam.enable = true;
}