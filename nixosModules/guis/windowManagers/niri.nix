{ config, imports, lib, pkgs, ... }:

{
  options = {
    niri.enable =
      lib.mkEnableOption "enable niri";
  };

  config = lib.mkIf config.niri.enable { 
    users.users.andrew = {
      packages = with pkgs; [
        niri
        kitty
        rofi
      ];
    };
  };
}