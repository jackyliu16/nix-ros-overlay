
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, tiago-2dnav, tiago-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-navigation";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_navigation/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "d44110ab98d550a81a99335cfc599991a4fc896bda44d88f72539556f879c6b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ tiago-2dnav tiago-laser-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''TIAGo navigation metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
