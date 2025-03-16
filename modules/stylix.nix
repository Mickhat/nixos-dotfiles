{ pkgs, ... }:
{
  stylix.enable = true;
  stylix.image = ./23.jpg;
  stylix.cursor.package = pkgs.bibata-cursors;
  stylix.cursor.name = "Bibata-Modern-Ice";
  stylix.cursor.size = 1;
  stylix.polarity = "dark";
  stylix.targets.plymouth.enable = false;
}