# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "diffbot_msgs: 8 messages, 0 services")

set(MSG_I_FLAGS "-Idiffbot_msgs:/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(diffbot_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg" NAME_WE)
add_custom_target(_diffbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "diffbot_msgs" "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg" ""
)

get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/EncodersStamped.msg" NAME_WE)
add_custom_target(_diffbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "diffbot_msgs" "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/EncodersStamped.msg" "std_msgs/Header:diffbot_msgs/Encoders"
)

get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg" NAME_WE)
add_custom_target(_diffbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "diffbot_msgs" "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg" ""
)

get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocitiesStamped.msg" NAME_WE)
add_custom_target(_diffbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "diffbot_msgs" "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocitiesStamped.msg" "std_msgs/Header:diffbot_msgs/AngularVelocities"
)

get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg" NAME_WE)
add_custom_target(_diffbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "diffbot_msgs" "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg" "diffbot_msgs/AngularVelocities"
)

get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmdStamped.msg" NAME_WE)
add_custom_target(_diffbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "diffbot_msgs" "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmdStamped.msg" "diffbot_msgs/AngularVelocities:std_msgs/Header:diffbot_msgs/WheelsCmd"
)

get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg" NAME_WE)
add_custom_target(_diffbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "diffbot_msgs" "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg" ""
)

get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PIDStamped.msg" NAME_WE)
add_custom_target(_diffbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "diffbot_msgs" "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PIDStamped.msg" "diffbot_msgs/PID:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_cpp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/EncodersStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_cpp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_cpp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocitiesStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_cpp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_cpp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmdStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_cpp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_cpp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PIDStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diffbot_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(diffbot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diffbot_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(diffbot_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(diffbot_msgs_generate_messages diffbot_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_cpp _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/EncodersStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_cpp _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_cpp _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocitiesStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_cpp _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_cpp _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmdStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_cpp _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_cpp _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PIDStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_cpp _diffbot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(diffbot_msgs_gencpp)
add_dependencies(diffbot_msgs_gencpp diffbot_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS diffbot_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_eus(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/EncodersStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_eus(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_eus(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocitiesStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_eus(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_eus(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmdStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_eus(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_eus(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PIDStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diffbot_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(diffbot_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diffbot_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(diffbot_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(diffbot_msgs_generate_messages diffbot_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_eus _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/EncodersStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_eus _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_eus _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocitiesStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_eus _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_eus _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmdStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_eus _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_eus _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PIDStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_eus _diffbot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(diffbot_msgs_geneus)
add_dependencies(diffbot_msgs_geneus diffbot_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS diffbot_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_lisp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/EncodersStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_lisp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_lisp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocitiesStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_lisp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_lisp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmdStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_lisp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_lisp(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PIDStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diffbot_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(diffbot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diffbot_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(diffbot_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(diffbot_msgs_generate_messages diffbot_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_lisp _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/EncodersStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_lisp _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_lisp _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocitiesStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_lisp _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_lisp _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmdStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_lisp _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_lisp _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PIDStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_lisp _diffbot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(diffbot_msgs_genlisp)
add_dependencies(diffbot_msgs_genlisp diffbot_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS diffbot_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_nodejs(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/EncodersStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_nodejs(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_nodejs(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocitiesStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_nodejs(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_nodejs(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmdStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_nodejs(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_nodejs(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PIDStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diffbot_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(diffbot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diffbot_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(diffbot_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(diffbot_msgs_generate_messages diffbot_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_nodejs _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/EncodersStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_nodejs _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_nodejs _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocitiesStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_nodejs _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_nodejs _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmdStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_nodejs _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_nodejs _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PIDStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_nodejs _diffbot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(diffbot_msgs_gennodejs)
add_dependencies(diffbot_msgs_gennodejs diffbot_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS diffbot_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_py(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/EncodersStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_py(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_py(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocitiesStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_py(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg"
  "${MSG_I_FLAGS}"
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_py(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmdStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_py(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diffbot_msgs
)
_generate_msg_py(diffbot_msgs
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PIDStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diffbot_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(diffbot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diffbot_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(diffbot_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(diffbot_msgs_generate_messages diffbot_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/Encoders.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_py _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/EncodersStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_py _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocities.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_py _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/AngularVelocitiesStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_py _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmd.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_py _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/WheelsCmdStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_py _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PID.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_py _diffbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mofei/catkin_ws/src/diffbot/diffbot_msgs/msg/PIDStamped.msg" NAME_WE)
add_dependencies(diffbot_msgs_generate_messages_py _diffbot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(diffbot_msgs_genpy)
add_dependencies(diffbot_msgs_genpy diffbot_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS diffbot_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diffbot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/diffbot_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(diffbot_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diffbot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/diffbot_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(diffbot_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diffbot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/diffbot_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(diffbot_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diffbot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/diffbot_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(diffbot_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diffbot_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diffbot_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/diffbot_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(diffbot_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
