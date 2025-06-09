cmake_minimum_required(VERSION 3.0.2)
project(using_markers)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  visualization_msgs
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES using_markers
#  CATKIN_DEPENDS roscpp visualization_msgs
#  DEPENDS system_lib
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(basic_shapes src/basic_shapes.cpp)
add_executable(points_and_lines src/points_and_lines.cpp)


target_link_libraries(points_and_lines ${catkin_LIBRARIES})
target_link_libraries(basic_shapes ${catkin_LIBRARIES})

