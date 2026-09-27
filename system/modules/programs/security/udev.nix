{
  services.udev.extraRules = ''
    # Silicon Labs CP2102 UART Bridge -> /dev/copra-uart
    SUBSYSTEM=="tty", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60", SYMLINK+="copra-uart", MODE="0666"
  
    # EMEET SmartCam C60E 4K (Frame Stream) -> /dev/copra-cam
    SUBSYSTEM=="video4linux", ATTRS{idVendor}=="328f", ATTRS{idProduct}=="00f3", ATTR{index}=="0", SYMLINK+="copra-cam", MODE="0666"
  '';
}