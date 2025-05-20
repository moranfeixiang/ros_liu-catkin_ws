cmake_minimum_required(VERSION 3.0.2)
project(learning_tf_homework)
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  rospy
  tf
)
catkin_package()
include_directories(
  ${catkin_INCLUDE_DIRS}
)
add_executable(tf_broadcaster_node src/tf_broadcaster.cpp)
add_executable(tf_listener_node src/tf_listener.cpp)
target_link_libraries(tf_broadcaster_node
  ${catkin_LIBRARIES}
)
target_link_libraries(tf_listener_node
  ${catkin_LIBRARIES}
)
catkin_install_python(PROGRAMS
  scripts/tf_broadcaster.py scripts/tf_listener.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
