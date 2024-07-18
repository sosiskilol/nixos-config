{ pkgs, ...}: {
  programs.fish.enable = true;
    
  users = {
    defaultUserShell = pkgs.fish;
    users.arthacker = {
      createHome = true;
      group = "arthacker";
      extraGroups = [
        "wheel"
      ];
      home = "/home/arthacker";
      uid = 1000;
      isNormalUser = true;

      openssh.authorizedKeys.keys = [ 
		"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAzUQEa0GonRTe+sWpxynh+7N820xB09O3obz4zEjx1C lizasudo"
      ];
    };
  };

  users.groups.arthacker = {};
  
  security.doas.enable = true;
}
