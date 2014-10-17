cmake_minimum_required(VERSION 3.0.0)

project(cmake_args_integration_test LANGUAGES NONE)

set(HUNTER_PROJECT_ROOT ${CMAKE_CURRENT_LIST_DIR}/test-root)
include("${CMAKE_CURRENT_LIST_DIR}/../../../../cmake/Hunter")

include(hunter_add_package)

hunter_add_package(Dependency)
