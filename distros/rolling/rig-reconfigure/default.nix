
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, glfw3, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-rig-reconfigure";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rig_reconfigure-release/archive/release/rolling/rig_reconfigure/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "41e9ec64ffe225ca5a9e8f60035428244a79a7dc189b251b92fc214d658160dd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ glfw3 rclcpp ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Standalone GUI tool for editing node parameters at runtime.'';
    license = with lib.licenses; [ mit ];
  };
}
