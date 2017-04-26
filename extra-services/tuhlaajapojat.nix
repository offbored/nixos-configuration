{ lib, config, ... }:
with lib;
{

  options.localConfiguration.extraServices.tuhlaajapojat = mkOption {
    type = types.bool;
    default = false;
  };

  config = let
    cfg = config.localConfiguration.extraServices;
  in mkIf cfg.tuhlaajapojat {

  };

}
