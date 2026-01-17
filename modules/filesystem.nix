{ config, ... }:

{
	fileSystems."/home" = {
    device = "/dev/disk/by-uuid/e5594dd0-8e5b-4642-bab2-c5cbc4c7d61e";
    fsType = "ext4";
    options = [ "defaults" "nofail" ]; # "nofail" prevents boot issues if drive is missing
  };

  fileSystems."/mnt/games" = {
    device = "/dev/disk/by-uuid/d9f6aaed-2e25-4cac-925a-e6cc64bd4541";
    fsType = "ext4";
    options = [ "defaults" "nofail" ];
  };

  fileSystems."/mnt/stream" = {
    device = "/dev/disk/by-uuid/4e4a02bb-e504-4c9d-abd3-bec8d9bad8aa";
    fsType = "ext4";
    options = [ "defaults" "nofail" ];
  };

  fileSystems."/mnt/edit" = {
    device = "/dev/disk/by-uuid/3ebe6ea7-737c-4c83-a5aa-9769504649bd";
    fsType = "ext4";
    options = [ "defaults" "nofail" ];
  };

}
