{ config, imports, lib, pkgs, ... }:

{
  options = {
    gnome.enable =
      lib.mkEnableOption "enable gnome";
  };

  config = lib.mkIf config.gnome.enable { 
    # Enable the GNOME Desktop Environment.
    services.desktopManager.gnome.enable = true;
  };
}
