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
    docker-compose
    asciiquarium
    python313Full
    ghostty
    pipx
    signal-desktop
    signal-cli
    megasync
    zip
    spotify
    thunderbird
    kitty
    wofi
    yazi
    nomacs
    swww
    hyprpanel
    grim
    slurp
    wl-clipboard
    swappy
    zed-editor
  ];

  fonts.packages = with pkgs; [
  nerd-fonts.jetbrains-mono
];

}
