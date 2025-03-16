{ pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    vim
    wget
    discord
    slack
    vscode
    git
    flameshot
    xdotool
    nixd
    fastfetch
    nh
    librewolf
    (pkgs.burpsuite.override { proEdition = true; }) 
    docker
];
}