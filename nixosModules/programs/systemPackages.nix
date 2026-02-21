{ config, imports, lib, pkgs, ... }:

{
  options = {
    systemPackages.enable =
      lib.mkEnableOption "enable systemPackages";
  };

  config = lib.mkIf config.systemPackages.enable { 
    environment.systemPackages = with pkgs; [
      neovim
      ranger
      git
    #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    #  wget
    ];
  };
}