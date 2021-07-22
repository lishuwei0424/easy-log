#/*build by lishuwei  date:2021-07-22
cmake_minimum_required(VERSION 3.10)
project(esay-log)

set(VERION_SOFT, 0.1)
configure_file (
    "${PROJECT_SOURCE_DIR}/config.h.in"
    "${PROJECT_BINARY_DIR}/config.h"
)
include_directories(
    ${PROJECT_SOURCE_DIR}/inc/log4cxx
    ${PROJECT_SOURCE_DIR}/inc/
    ${PROJECT_SOURCE_DIR}/inc/demo
)
#SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

add_executable(esay-log  ${PROJECT_SOURCE_DIR}/src/LoggerWarp.cpp ${PROJECT_SOURCE_DIR}/app/test.cpp)
target_link_libraries(esay-log   ${PROJECT_SOURCE_DIR}/lib/log4cxx/liblog4cxx.so)

