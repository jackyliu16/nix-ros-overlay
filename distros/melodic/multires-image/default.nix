
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, gps-common, mapviz, pluginlib, qt5, roscpp, rospy, swri-math-util, swri-transform-util, swri-yaml-util, tf }:
buildRosPackage {
  pname = "ros-melodic-multires-image";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/multires_image/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "f915a51c4f1ecf3ef912fd59b1391248f355405e0a77c7694801bc61befccb44";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs gps-common mapviz pluginlib qt5.qtbase roscpp rospy swri-math-util swri-transform-util swri-yaml-util tf ];
  nativeBuildInputs = [ catkin qt5.qtbase ];

  meta = {
    description = ''multires_image'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
