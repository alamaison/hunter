if(DEFINED HUNTER_CMAKE_CONFIG_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_CONFIG_CMAKE_ 1)
endif()

include(hunter_config)

hunter_config(
  Dependency VERSION 1.0.0 CMAKE_ARGS TEST_CONFIG_ARG=MakeTestPass)
