# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gmapping: 1 messages, 0 services")

set(MSG_I_FLAGS "-Igmapping:/home/angel/catkin_ws/src/slam_gmapping-hydro-devel/gmapping/msg;-Isensor_msgs:/home/angel/catkin_ws/src/common_msgs-indigo-devel/sensor_msgs/msg;-Igeometry_msgs:/home/angel/catkin_ws/src/common_msgs-indigo-devel/geometry_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gmapping_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/angel/catkin_ws/src/slam_gmapping-hydro-devel/gmapping/msg/MultiScan.msg" NAME_WE)
add_custom_target(_gmapping_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gmapping" "/home/angel/catkin_ws/src/slam_gmapping-hydro-devel/gmapping/msg/MultiScan.msg" "std_msgs/Header:sensor_msgs/LaserScan"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gmapping
  "/home/angel/catkin_ws/src/slam_gmapping-hydro-devel/gmapping/msg/MultiScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/angel/catkin_ws/src/common_msgs-indigo-devel/sensor_msgs/msg/LaserScan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gmapping
)

### Generating Services

### Generating Module File
_generate_module_cpp(gmapping
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gmapping
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gmapping_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gmapping_generate_messages gmapping_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/angel/catkin_ws/src/slam_gmapping-hydro-devel/gmapping/msg/MultiScan.msg" NAME_WE)
add_dependencies(gmapping_generate_messages_cpp _gmapping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gmapping_gencpp)
add_dependencies(gmapping_gencpp gmapping_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gmapping_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gmapping
  "/home/angel/catkin_ws/src/slam_gmapping-hydro-devel/gmapping/msg/MultiScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/angel/catkin_ws/src/common_msgs-indigo-devel/sensor_msgs/msg/LaserScan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gmapping
)

### Generating Services

### Generating Module File
_generate_module_lisp(gmapping
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gmapping
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gmapping_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gmapping_generate_messages gmapping_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/angel/catkin_ws/src/slam_gmapping-hydro-devel/gmapping/msg/MultiScan.msg" NAME_WE)
add_dependencies(gmapping_generate_messages_lisp _gmapping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gmapping_genlisp)
add_dependencies(gmapping_genlisp gmapping_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gmapping_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gmapping
  "/home/angel/catkin_ws/src/slam_gmapping-hydro-devel/gmapping/msg/MultiScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/angel/catkin_ws/src/common_msgs-indigo-devel/sensor_msgs/msg/LaserScan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gmapping
)

### Generating Services

### Generating Module File
_generate_module_py(gmapping
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gmapping
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gmapping_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gmapping_generate_messages gmapping_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/angel/catkin_ws/src/slam_gmapping-hydro-devel/gmapping/msg/MultiScan.msg" NAME_WE)
add_dependencies(gmapping_generate_messages_py _gmapping_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gmapping_genpy)
add_dependencies(gmapping_genpy gmapping_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gmapping_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gmapping)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gmapping
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(gmapping_generate_messages_cpp sensor_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gmapping)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gmapping
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(gmapping_generate_messages_lisp sensor_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gmapping)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gmapping\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gmapping
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(gmapping_generate_messages_py sensor_msgs_generate_messages_py)
