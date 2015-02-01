
if(DEFINED HUNTER_CMAKE_PROJECTS_WTL_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_WTL_HUNTER_CMAKE_ 1)
endif()

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    WTL
    VERSION
    "9.0.4140"
    URL
    "https://downloads.sourceforge.net/project/wtl/WTL%209.0/WTL%209.0.4140%20Final/WTL90_4140_Final.zip"
    SHA1
    cd1194b140f77047bdea94efbf862a90dab8f629
)

hunter_add_version(
    PACKAGE_NAME
    WTL
    VERSION
    "8.1.2085"
    URL
    "http://sourceforge.net/projects/wtl/files/WTL%208.1/WTL%208.1.12085/wtl81_12085.zip/download"
    SHA1
    1f3b60f76cc02fef1268ba1d702148998b2e1a6b
)

hunter_add_version(
    PACKAGE_NAME
    WTL
    VERSION
    "8.0.7161"
    URL
    "https://sourceforge.net/projects/wtl/files/WTL%208.0/WTL%208.0%20Final/WTL80_7161_Final.zip/download"
    SHA1
    efb2ae143696a12bcf369da3fbefe9c6ce2b4d89
)

hunter_add_version(
    PACKAGE_NAME
    WTL
    VERSION
    "7.5.5333"
    URL
    "http://sourceforge.net/projects/wtl/files/WTL%207.5/WTL%207.5%20Final/WTL75_5333_Final.zip/download"
    SHA1
    27a5e5193277231d44e601b5f8bb5afcf44ca9bf
)

hunter_pick_scheme(
    DEFAULT url_sha1_no_install
)

hunter_download(PACKAGE_NAME WTL)

add_library(WTL::wtl INTERFACE IMPORTED)
set_target_properties(WTL::wtl PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES ${WTL_ROOT}/include)
