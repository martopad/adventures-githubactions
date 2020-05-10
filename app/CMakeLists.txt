cmake_minimum_required(VERSION 3.0)

project(myapp CXX)
include(GNUInstallDirs)

set(SOURCE main.cpp)

add_executable(${PROJECT_NAME} ${SOURCE})

install(TARGETS ${PROJECT_NAME}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})