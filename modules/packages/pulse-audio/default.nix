{ pkgs, ... }:
{
        environment.systemPackages = with pkgs; [
                pulseaudio
                pulseaudioUtils
        ];
}
