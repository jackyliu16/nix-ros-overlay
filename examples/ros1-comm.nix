{ pkgs ? import ../. {} }:

with pkgs;
with rosPackages.noetic;
with pythonPackages;

mkShell {
  buildInputs = [
    glibcLocales
    (buildEnv { paths = [

      catkin
      ros-core
      roslaunch
      ros-comm
      roslaunch
      rospy
      rosbag
      rostopic
      rospy-tutorials
      # cmake-modules

      rosbash
      ros-tutorials
      # turtlebot3-description
      # turtlebot3-teleop
      # turtlebot3-gazebo
      gazebo-plugins
      xacro
    ]; })
  ];
  ROS_HOSTNAME = "localhost";
  ROS_MASTER_URI = "http://localhost:11311";
  TURTLEBOT3_MODEL = "burger";
}
