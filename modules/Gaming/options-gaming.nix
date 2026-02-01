{ pkgs, ... }:
{
  programs = {
		steam = {
			enable = true;
		};
		java = {
			enable = true;
			package = pkgs.javaPackages.compiler.temurin-bin.jdk-25;
		};
	};
}
