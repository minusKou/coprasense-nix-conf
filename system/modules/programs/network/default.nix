{
  networking = {
    hostName = "coprasense";
    firewall = {
      enable = true;
      allowedTCPPorts = [ 22 ];
    };
    interfaces.eno1.ipv4.addresses = [{
      address = "10.0.0.86";
      prefixLength = 29;
    }];
    defaultGateway =  {
      address = "10.0.0.81";
      interface = "eno1";
    };
    nameservers = [ "10.0.0.66" ];
  };
  services.openssh.enable = true;
}