
if(DEFINED HUNTER_CMAKE_PROJECTS_DEPENDENCY_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_DEPENDENCY_HUNTER_CMAKE_ 1)
endif()

include(hunter_add_version)
include(hunter_add_version_start)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version_start(Dependency)

#get_filename_component(
#  TEST_SOURCE_ARCHIVE ${CMAKE_CURRENT_LIST_DIR} ABSOLUTE)

hunter_add_version(
    PACKAGE_NAME
    Dependency
    VERSION
    "1.0.0"
    URL
    "file://${CMAKE_CURRENT_LIST_DIR}/test.zip"
    SHA1
    d48c5f2381bbb6b4fa60dca1e2f50993e7dc6947)

hunter_cmake_args(
    Dependency
    CMAKE_ARGS
      TEST_CONFIG_ARG=MakeTestFail # Will be overridden by config file
      TEST_ARG=MakeTestPass
)

hunter_pick_scheme(
    DEFAULT url_sha1_release_debug
    COMBINED url_sha1_combined_release_debug
)

hunter_download(PACKAGE_NAME Dependency)
