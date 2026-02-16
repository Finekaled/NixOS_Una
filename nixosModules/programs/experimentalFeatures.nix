{ imports, lib, config, pkgs, ... }:

{
  options = {
    experimentalFeatures.enable =
      lib.mkEnableOption "enable experimentalFeatures";
  };

  config = lib.mkIf config.experimentalFeatures.enable { 
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    
    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;
  };
}