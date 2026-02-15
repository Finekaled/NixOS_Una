{ config, pkgs, ... }:

{
  # List packages used for office/notes functions. To search, run:
  # $ nix search wget
  programs.discord.enable = true;
  programs.element-desktop.enable = true;
  programs.viber.enable = true;
  programs.whatsapp-electron.enable = true;
}