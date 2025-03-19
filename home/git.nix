{
  programs.git = {
    enable = true;
    userName = "Mickhat";
    userEmail = "root@mickhat.xyz";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
  programs = {
    direnv = {
      enable = true;
      enableBashIntegration = true; # see note on other shells below
      nix-direnv.enable = true;
    };

    bash.enable = true; # see note on other shells below
  };
}
