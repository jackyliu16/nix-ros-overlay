{ pkgs ? import ../. {} }:

with pkgs;
with rosPackages.noetic;
with pythonPackages;

mkShell {
  bildInputs = [
    glibcLocales
    (buildEnv { paths = [
      ros-core
      roslaunch
      ros-comm

      rosbash
      turtlebot3-description
      turtlebot3-teleop
      turtlebot3-gazebo
      gazebo-plugins
      xacro
    ];})
  ];
  ROS_HOSTNAME="localhost";
  ROS_MASTER_URL="http://localhost:11311";
  TURTLEBOT3_MODEL = "burger";
}
