{ pkgs, ... }: {
imports = [
  ./network.nix
];

environment.systemPackages = with pkgs; [
  neofetch
  git
  fastfetch
  htop
  zip
  unzip
  wget
  micro
];
}
