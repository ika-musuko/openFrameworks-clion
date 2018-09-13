cmake_minimum_required(VERSION 3.3)
project(openFrameworks-clion)
set(APP_NAME openFrameworks-clion)

# ===================== oF Directory =====================
set(OF_DIRECTORY ~/of)


# ===================== Compiler Flags =====================
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall")
set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

# =========== Set Global Properties ==============
include(addons)
include(linux64)

# ===================== Source Files =====================
set(SOURCE_FILES
        ${ADDON_SOURCE_FILES}
        src/main.cpp
        src/ofApp.cpp)


# ===================== System Frameworks =====================

# =============================================================

# ===================== Include Dirs =====================
## GStreamer 1.0 package required
find_package(PkgConfig)

macro(find_gstreamer_component prefix pkg lib)
  pkg_check_modules(PC_${prefix} REQUIRED ${pkg})
  find_library(${prefix}_LIBRARIES NAMES ${lib} HINTS ${PC_${prefix}_LIBRARY_DIRS} ${PC_${prefix}_LIBDIR})
  list(APPEND GST_INCLUDE_DIRS ${PC_${prefix}_INCLUDE_DIRS})
  list(APPEND GST_LIBRARIES ${${prefix}_LIBRARIES})
  mark_as_advanced(${prefix}_LIBRARIES GST_LIBRARIES GST_INCLUDE_DIRS)
endmacro()

find_gstreamer_component(gst      gstreamer-1.0       gstreamer-1.0)
find_gstreamer_component(gstbase  gstreamer-base-1.0  gstbase-1.0)
find_gstreamer_component(gstapp   gstreamer-app-1.0   gstapp-1.0)
find_gstreamer_component(gstvideo gstreamer-video-1.0 gstvideo-1.0)

include_directories(${GST_INCLUDE_DIRS})
link_libraries(${GST_LIBRARIES})

# ========================================================


# ===================== Libs =====================

# ================================================

# ============ Compile and Link ==================

add_executable(${APP_NAME} ${SOURCE_FILES})
add_dependencies(${APP_NAME} of_shared)
target_link_libraries(${APP_NAME} $<TARGET_FILE:of_shared>)
target_link_libraries(${APP_NAME} ${OF_CORE_LIBS})


set_target_properties(${APP_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)
