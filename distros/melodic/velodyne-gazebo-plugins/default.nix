
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-velodyne-gazebo-plugins";
  version = "1.0.13-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/melodic/velodyne_gazebo_plugins/1.0.13-1.tar.gz";
    name = "1.0.13-1.tar.gz";
    sha256 = "191487afff2cca5a03f11d85cb6f4f3af3c95e846a344d68ecfbb8eceeddb3b8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugin to provide simulated data from Velodyne laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
