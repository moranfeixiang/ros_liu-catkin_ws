cmake_minimum_required(VERSION 3.0.2)
project(learning_tf)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  tf
  turtlesim
)

catkin_package(
)
## Your package locations should be listed before other locations
include_directories(
  ${catkin_INCLUDE_DIRS}
  include
)

add_executable(${PROJECT_NAME}_broadcaster src/tf_broadcaster.cpp)
add_executable(${PROJECT_NAME}_listener src/tf_listener.cpp)

target_link_libraries(${PROJECT_NAME}_broadcaster
  ${catkin_LIBRARIES}
)
target_link_libraries(${PROJECT_NAME}_listener
  ${catkin_LIBRARIES}
)

catkin_install_python(PROGRAMS
  scripts/tf_broadcaster.py
  scripts/tf_listener.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

