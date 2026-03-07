{ pkgs, lib, ... }:
{
  services.greetd = {
    enable = true;
    settings = {
      initial_session = {
        command = "${pkgs.hyprland}/bin/Hyprland -q";
        user = "haseeb";
      };
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --remember --asterisks --time --cmd '${pkgs.hyprland}/bin/Hyprland'";
        user = "greeter";
      };
    };
    systemd.serviceConfig = {
      Type = "idle";
      StandardInput = "tty";
      StandardOutput = "tty";
      StandardError = "journal";
      TTYReset = true;
      TTYVHangup = true;
      TTYVTDisallocate = true;
      KeyringMode = lib.mkForce "inherit";
    };
  };

  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;
}   
