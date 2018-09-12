cmake_minimum_required(VERSION 3.3)
project(Template)
set(APP_NAME Template)

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

# ========================================================


# ===================== Libs =====================

# ================================================

# ============ Compile and Link ==================

add_executable(${APP_NAME} ${SOURCE_FILES})
add_dependencies(${APP_NAME} of_shared)
target_link_libraries(${APP_NAME} $<TARGET_FILE:of_shared>)
target_link_libraries(${APP_NAME} ${OF_CORE_LIBS})


set_target_properties(${APP_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)
