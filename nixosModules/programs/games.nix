{ config, imports, lib, pkgs, ... }:

{
  options = {
    games.enable =
      lib.mkEnableOption "enable games";
  };

  config = lib.mkIf config.communicationSuite.enable { 
    users.users.andrew = {
      packages = with pkgs; [
        kdePackages.bovo
        kdePackages.kmines
        steam
      ];
    };
  };
}