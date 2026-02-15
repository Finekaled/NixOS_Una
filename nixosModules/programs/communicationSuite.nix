{ imports, lib, config, pkgs, ... }:

{
  options.communicationSuite = {
    enable = lib.options.mkEnableOption "enable communicationSuite";
  };

  config = {
    # List packages used for communication app functions. To search, run:
    # $ nix search wget
    programs.discord.enable = true;
    programs.element-desktop.enable = true;
    programs.thunderbird.enable = true;
    programs.viber.enable = true;
    programs.whatsapp-electron.enable = true;
  };
}