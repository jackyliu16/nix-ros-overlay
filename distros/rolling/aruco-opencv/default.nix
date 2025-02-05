
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, aruco-opencv-msgs, cv-bridge, image-transport, libyamlcpp, python39Packages, python3Packages, rclcpp, rclcpp-components, rclcpp-lifecycle, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-aruco-opencv";
  version = "4.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_opencv-release/archive/release/rolling/aruco_opencv/4.1.0-3.tar.gz";
    name = "4.1.0-3.tar.gz";
    sha256 = "12e068f799e265df4390e8e9522edc3ae9b011bfd69e8bc6600ab0ef13626384";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cpplint ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ aruco-opencv-msgs cv-bridge image-transport libyamlcpp python39Packages.img2pdf python3Packages.numpy python3Packages.opencv3 rclcpp rclcpp-components rclcpp-lifecycle tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ArUco marker detection using aruco module from OpenCV libraries.'';
    license = with lib.licenses; [ mit ];
  };
}
