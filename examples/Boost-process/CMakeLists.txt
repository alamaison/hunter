# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.0)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(example-boost-process)

# download boost.process
hunter_add_package(BoostProcess)

# now boost.process can be used
find_package(BoostProcess CONFIG REQUIRED)

add_executable(foo foo.cpp)
target_link_libraries(foo BoostProcess::boost_process)
