{ imports, lib, config, pkgs, ... }:

{
  options = {
    communicationSuite.enable =
      lib.mkEnableOption "enable communicationSuite";
  };

  config = lib.mkIf config.communicationSuite.enable { 
    users.users.andrew = {
      packages = with pkgs; [
        discord
        element-desktop
        thunderbird
        viber
        whatsapp-electron
      ];
    };
    # programs.discord.enable = true;
    # programs.element-desktop.enable = true;
  };
}