cmake_minimum_required(VERSION 3.0.2)
project(trd_driver)

find_package(catkin REQUIRED
    roscpp
)

catkin_package(CATKIN_DEPENDS
)


include_directories(
    include
    ${catkin_INCLUDE_DIRS}
)

# hello_world_node
add_executable(hello_world_node
    src/hello_world_node.cpp
)
target_link_libraries(hello_world_node
    ${catkin_LIBRARIES}
)

# talker_node
add_executable(talker_node
  src/talker_node.cpp
)
target_link_libraries(talker_node
  ${catkin_LIBRARIES})

# listener_node
add_executable(listener_node
  src/listener_node.cpp
)
target_link_libraries(listener_node
  ${catkin_LIBRARIES})
  

