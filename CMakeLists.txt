cmake_minimum_required(VERSION 2.8)
set(PROJ_NAME first_window)

# find opengl via pkg-config
find_package(PkgConfig)
pkg_check_modules(EGL REQUIRED egl)
pkg_check_modules(GLES2 REQUIRED glesv2)

# Include directories for this project
set(INCLUDE_PATH
  ${EGL_INCLUDE_DIR}
  ${GLES2_INCLUDE_DIR}
  )

# Libraries needed on all platforms for this project
set(LIBRARIES
  ${EGL_LIBRARIES}
  ${GLES2_LIBRARIES}
  )

# Add a target executable
add_executable(${PROJ_NAME}
  first_window.c
  )

target_link_libraries(${PROJ_NAME} ${LIBRARIES})