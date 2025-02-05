# Run:
# roslaunch turtlebot3_gazebo turtlebot3_world.launch
# roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch

{ pkgs ? import ../. {} }:
with pkgs;
with rosPackages.noetic;
with pythonPackages;

mkShell {
  buildInputs = [
    glibcLocales
    (buildEnv { paths = [
      rosbash
      turtlesim
      gazebo-plugins
      xacro
    ]; })
  ];

  ROS_HOSTNAME = "localhost";
  ROS_MASTER_URI = "http://localhost:11311";
  TURTLEBOT3_MODEL = "burger";
  GTK_PATH="${gtk-engine-murrine}/lib/gtk-2.0:${gtk_engines}/lib/gtk-2.0";
  shellHook = ''
    export QT_XCB_GL_INTEGRATION=none
  '';
}
