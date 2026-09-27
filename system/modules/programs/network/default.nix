{
  networking = {
    hostName = "coprasense";
    firewall = {
      enable = true;
      allowedTCPPorts = [ 22 8000 ];
    };
    interfaces.eno1.ipv4.addresses = [{
      address = "10.0.30.4";
      prefixLength = 29;
    }];
    defaultGateway =  {
      address = "10.0.30.1";
      interface = "eno1";
    };
    nameservers = [ "10.0.30.6" ];
  };
  services.openssh.enable = true;
}
