{ pkgs, inputs, ... }:
{
        services.greetd = {enable = true;};
                programs.regreet = {
                        theme = { name = "Breeze-Dark"; package = pkgs.libsForQt5.breeze-gtk; };
                        iconTheme = { name = "breeze"; package = pkgs.breeze-icons; };
        };
}
