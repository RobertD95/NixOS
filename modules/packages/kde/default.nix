{ pkgs, ... }:
{
        programs.kdeconnect.enable = true;
        services.desktopManager.plasma6.enable = true;
        environment.plasma6.excludePackages = [
               pkgs.kdePackages.elisa
               pkgs.kdePackages.konsole
        ];
        environment.systemPackages = with pkgs; [
                kdePackages.ark
                kdePackages.dolphin
        ];
}

