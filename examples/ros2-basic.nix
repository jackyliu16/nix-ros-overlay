# Environment containing basic ROS2 tools

{ pkgs ? import ../. {} }:
with pkgs;
with rosPackages.humble;

mkShell {
  nativeBuildInputs = [
    (buildEnv {
      paths = [
        # ros2 basic
        ros-environment
        ros2topic
        ros2launch
        # ros2doctor
        ros2run
        ros2cli
        # ros2cli-test-interfaces
        # ros2cli-common-extensions

        geometry-msgs
        gazebo-plugins
        xacro

        turtlesim
        # turtlebot3-description
        # turtlebot3-teleop
        # turtlebot3-example
        # turtlebot3-gazebo
      ];
    })
  ];
}
