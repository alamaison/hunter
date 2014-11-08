cmake_minimum_required(VERSION 3.0.0)

project(cmake_args_integration_test)

set(HUNTER_PROJECT_ROOT ${CMAKE_CURRENT_LIST_DIR}/test-root)

include("../../../common.cmake")

hunter_add_package(Dependency)
