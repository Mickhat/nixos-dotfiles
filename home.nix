{ inputs, ... }:
{
  imports = [ ./home/git.nix ];
  home.stateVersion = "25.05";
}