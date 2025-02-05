
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-wait-set";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_wait_set/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "7b8d3ab947e0f04079f7c8a386e7140d470ae834cedaedb49982727760271db8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example of how to use the rclcpp::WaitSet directly.'';
    license = with lib.licenses; [ asl20 ];
  };
}
