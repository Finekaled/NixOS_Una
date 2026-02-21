{ config, imports, lib, pkgs, ... }:

{
  options = {
    hyprland.enable =
      lib.mkEnableOption "enable hyprland";
  };

  config = lib.mkIf config.hyprland.enable { 
    users.users.andrew = {
      packages = with pkgs; [
        hyprland
        kitty
        rofi
      ];
    };
  };
}
# I think I need to enable sddm as a service.
# Additionally, I might need to start a hyprland service or something.
