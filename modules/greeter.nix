{ pkgs, inputs, ... }:
let
        hypr = inputs.hyprland.packages.x86_64-linux;
        tuigreet = "${pkgs.tuigreet}/bin/tuigreet";
        hyprland-session = "${hypr.hyprland}/share/wayland-sessions";
in {
        services.greetd = {
                enable = true;
                        settings = {
                                default_session = {
                                        command = "${tuigreet} --time --remember --remember-session --sessions ${hyprland-session}";
                                        user = "greeter";
                                };
                        };
                };
        systemd.services.greetd.serviceConfig = {
                Type = "idle";
                StandardInput = "tty";
                StandardOutput = "tty";
                StandardError = "journal"; # Without this errors will spam on screen
                # Without these bootlogs will spam on screen
                TTYReset = true;
                TTYVHangup = true;
                TTYVTDisallocate = true;
        };
}
