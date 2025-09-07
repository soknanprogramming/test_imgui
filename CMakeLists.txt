cmake_minimum_required(VERSION 3.16)
project(ume)

set(CMAKE_CXX_STANDARD 17)

find_package(OpenGL REQUIRED)

# Include our dependency scripts
include(cmake/glfw.cmake)
include(cmake/imgui.cmake)

# Add your app
add_subdirectory(src)

# Link OpenGL to ImGui
target_link_libraries(imgui_glfw PUBLIC glfw OpenGL::GL)
