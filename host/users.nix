{...}: {
  users.users = {
    arthacker = {
      createHome = true;
      group = "arthacker";
      extraGroups = [
        "wheel"
      ];
      home = "/home/arthacker";
      shell = "/bin/bash";
      uid = 1000;
    };
  };

  users.groups.arthacker = {};

  security.doas.enable = true;
}
