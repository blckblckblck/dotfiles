{ pkgs, ... }:
{
  users.users.blck = {
    isNormalUser = true;
    description = "blck";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
    ];
    shell = pkgs.zsh;
  };
}
