{ config, pkgs, ... }:

{
  # List packages used for office/notes functions. To search, run:
  # $ nix search wget
  programs.libreoffice.enable = true;
  programs.trilium-desktop.enable = true;
}