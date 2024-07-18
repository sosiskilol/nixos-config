{...}: {
  users.users = {
    arthacker = {
      createHome = true;
      extraGroups = [
        "wheel"
      ];
      home = "/home/arthacker";
      shell = "/bin/bash";
      uid = 1000;
    };
  };

  security.doas.enable = true;
}
