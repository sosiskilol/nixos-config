{ ... }:{
    networking.useNetworkd = true;
	systemd.network = {
		enable = true;
		#networks."10-wan" = {
		#	matchConfig.Name = "enp1s0";
		#	networkConfig.DHCP = "ipv4";
		#};
	};

	services.openssh = {
		enable = true;
		settings.PasswordAuthentication = false;
		settings.KbdInteractiveAuthentication = false;
	};
}
