
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, nav2-common, navigation2, slam-toolbox }:
buildRosPackage {
  pname = "ros-humble-nav2-bringup";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_bringup/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "03ded9ef219db9db55686a66efde48397f734ce4e9c64e403f19908d7077262a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ launch-ros nav2-common navigation2 slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Bringup scripts and configurations for the Nav2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
