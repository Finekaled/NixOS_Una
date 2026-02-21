{ config, imports, lib, pkgs, ... }:

{
  options = {
    officeSuite.enable =
      lib.mkEnableOption "enable officeSuite";
  };

  config = lib.mkIf config.officeSuite.enable { 
    users.users.andrew = {
      packages = with pkgs; [
        libreoffice
        trilium-desktop
      ];
    };
  };
}