
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, pluginlib, rcpputils, rcutils, rosbag2-test-common, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-foxy-rosbag2-storage";
  version = "0.3.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/rosbag2_storage/0.3.10-1.tar.gz";
    name = "0.3.10-1.tar.gz";
    sha256 = "b0b990d03cc6f3030fddac6b221b3a43babc7de302933c3933f73f9041f6c9c3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common rosbag2-test-common ];
  propagatedBuildInputs = [ pluginlib rcpputils rcutils yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 independent storage format to store serialized ROS2 messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
