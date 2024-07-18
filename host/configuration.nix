{...}: {
  imports = [
    ./hardware-configuration.nix
    ./users.nix
  ];

  networking.hostname = "njetmolotoff";
  time.timeZone = "Europe/Moscow";
  i18n.defaultLocale = "en_US.UTF-8";
  nix.settings.experimental-features = ["nix-command" "flakes"];
  system.stateVersion = "24.05";
}
