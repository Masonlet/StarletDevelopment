cmake_minimum_required(VERSION 3.23)

set(DEV_NAME StarletDev)
project(${DEV_NAME} LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 20)
set(EXTERN_DIR "${CMAKE_SOURCE_DIR}/Starlet")

set(modules
  StarletMath
  StarletControls
  StarletScene
  StarletGraphics
  StarletParsers
  StarletEngine
  StarletSamples
)

foreach (mod IN LISTS modules)
  set(mod_dir "${EXTERN_DIR}/${mod}")
  if(EXISTS "${mod_dir}/CMakeLists.txt")
    add_subdirectory(${mod_dir} ${mod})
  else()
    message(WARNING "Module ${mod} not found at ${mod_dir} or is missing its CMakeLists.txt")
  endif()
endforeach()

