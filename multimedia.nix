{ pkgs, config, ... }:

{
  environment.systemPackages = [
    pkgs.libcamera
    pkgs.gst_all_1.gst-vaapi
    pkgs.gst_all_1.gst-libav
    pkgs.gst_all_1.gst-plugins-ugly
    pkgs.gst_all_1.gst-plugins-good
    pkgs.gst_all_1.gst-plugins-bad
    pkgs.gst_all_1.gst-plugins-base
  ];
}
