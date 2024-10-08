{ config, lib, pkgs, inputs, ... }:
{

  # Enable Firewall
networking = {
  firewall = {
    enable = true;
      allowedTCPPortRanges = [
        { from = 2000; to = 25565; }
        { from = 4000; to = 4007; }
        { from = 8000; to = 8384; }
    ];
  };
};
}
