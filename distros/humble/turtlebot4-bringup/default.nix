
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, depthai-bridge, depthai-examples, depthai-ros-driver, depthai-ros-msgs, joy-linux, nav2-common, rplidar-ros, teleop-twist-joy, tf2-ros, turtlebot4-description, turtlebot4-diagnostics, turtlebot4-node }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-bringup";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/humble/turtlebot4_bringup/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "dfc655f048ffb8fe09ce5485e45f3c6416ad49a5b172e9c544fcfa3c0c5ee1c1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ depthai-bridge depthai-examples depthai-ros-driver depthai-ros-msgs joy-linux nav2-common rplidar-ros teleop-twist-joy tf2-ros turtlebot4-description turtlebot4-diagnostics turtlebot4-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Robot Bringup'';
    license = with lib.licenses; [ asl20 ];
  };
}
