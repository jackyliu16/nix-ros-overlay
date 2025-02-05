
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, asio, nlohmann_json, openssl, rclcpp, rclcpp-components, ros-environment, rosgraph-msgs, std-msgs, std-srvs, websocketpp, zlib }:
buildRosPackage {
  pname = "ros-humble-foxglove-bridge";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foxglove_bridge-release/archive/release/humble/foxglove_bridge/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "f5534331ade82d3d919f206c0d449371f03c03b32a8da598d1671b8bfc4b0ceb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake asio nlohmann_json ros-environment websocketpp ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto std-msgs std-srvs ];
  propagatedBuildInputs = [ ament-index-cpp openssl rclcpp rclcpp-components rosgraph-msgs zlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS Foxglove Bridge'';
    license = with lib.licenses; [ mit ];
  };
}
