
if(DEFINED HUNTER_CMAKE_PROJECTS_BOOST_PROCESS_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_BOOST_PROCESS_HUNTER_CMAKE_ 1)
endif()

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    Boost.Process
    VERSION
    "0.5.0"
    URL
    "http://www.highscore.de/boost/gsoc2010/process.zip"
    SHA1
    64b0b3a6488ed5fee73455c553997e97f8474df4
)

hunter_pick_scheme(
    DEFAULT url_sha1_no_install
)

hunter_download(PACKAGE_NAME Boost.Process)

add_library(Boost::Process INTERFACE IMPORTED)
set_target_properties(Boost::Process PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES ${BOOST.PROCESS_ROOT})
