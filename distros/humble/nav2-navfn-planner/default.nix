
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, nav-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-nav2-navfn-planner";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_navfn_planner/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "9761e73f187cd0e51850f84f99b7dc9f5578831449d6610b43c464266c2bb621";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-msgs nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp rclcpp-action rclcpp-lifecycle tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
