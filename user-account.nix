{ config, pkgs, ... }:

{
 # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.YOUR_USER_ACCOUNT = {
    isNormalUser = true;
    description = "FIRST AND LAST NAME";
    extraGroups = [ "networkmanager" "wheel" "gamemode"];
    initialPassword = "initial-login-password";
    openssh.authorizedKeys.keys = [
      "YOUR SSH KEY HERE user@machine"  ];
  };
}
