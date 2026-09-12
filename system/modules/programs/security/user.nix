{ ... }:
{
  users.users.copra = {
    isNormalUser = true;
    extraGroups = [ "wheel" "video" "dialout" ];
  };
}