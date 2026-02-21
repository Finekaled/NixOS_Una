{ config, imports, lib, pkgs, ... }:

{
  options = {
    eyeCandy.enable =
      lib.mkEnableOption "enable eyeCandy";
  };

  config = lib.mkIf config.eyeCandy.enable { 
    users.users.andrew = {
      packages = with pkgs; [
        cava
        tty-clock
        mandelbrot-cli
        astroterm
      ];
    };
  };
}